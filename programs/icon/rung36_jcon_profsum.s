                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__lookup:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              rdi, rsp
                        add              rdi, 544
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
lookup_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              dword ptr [rsp + 416], 0;            jmp   n1_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              jne   .Lx27_0
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax;          jmp   n7_disjunction_α
.Lx27_0:                                                                      jmp   n7_disjunction_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 416];          jmp   n7_disjunction_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 416], 1
                        mov              eax, dword ptr [rsp + 416];          jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # lookup__INITFLAG__0
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 504], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n4_assign_var_α
.Lx31_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        .section         .rodata
.Lrkfn34:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]
                        lea              rsi, [rsp + 464]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n7_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_assign_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [r9 + 0], rax              # ptab
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n0_disjunction_as
n6_assign_β:            mov              r11, 7;                              jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:       mov              r11, 8
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n18_var_ref_α
n7_disjunction_as:      mov              r11, 8
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx37_0
                                                                              jmp   lookup_γ
.Lx37_0:                cmp              eax, 1;                              jne   .Lx37_1
                                                                              jmp   lookup_γ
.Lx37_1:                                                                      jmp   lookup_γ
n7_disjunction_β:       mov              r11, 8
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    lookup_ω
                                                                              jmp   lookup_ω
n7_disjunction_af:      mov              r11, 8
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n8_var_ref_α
                                                                              jmp   lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # ptab
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n9_var_α
n8_var_ref_β:           mov              r11, 9;                              jmp   lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n10_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              r11, 11
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    lookup_ω
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n13_lit_integer_α
.Lx45_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n14_lit_integer_α
.Lx46_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n15_call_α
.Lx47_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             mov              r11, 16
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn49:               .string          "method"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rsp + 256]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    lookup_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_assign_var_α
n15_call_β:             mov              r11, 16;                             jmp   lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_var_α:       mov              r11, 17
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    lookup_ω
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n17_return_α
#-----------------------------------------------------------------------------------------------------------------------
n17_return_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   lookup_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # ptab
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n19_var_α
n18_var_ref_β:          mov              r11, 19;                             jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n20_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:        mov              r11, 21
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n7_disjunction_af
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n21_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_deref_α:            mov              r11, 22
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n7_disjunction_af
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n22_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_test_α:        mov              r11, 23
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 104;                             je    n7_disjunction_af
                        cmp              eax, 0;                              je    n7_disjunction_af
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 72], rax;           jmp   n25_return_α
#-----------------------------------------------------------------------------------------------------------------------
n25_return_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   lookup_γ
#-----------------------------------------------------------------------------------------------------------------------
lookup_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lookup_β:
                                                                              jmp   lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
lookup_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 616]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
lookup_ω:
                        mov              rcx, qword ptr [rsp + 624]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
lookup_dcα:
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
                        lea              rcx, [rip + .Lx63_2]
                        lea              rdx, [rip + .Lx63_3];                jmp   FN__lookup
.Lx63_2:                pop              r12
                        pop              r12;                                 jmp   r12
.Lx63_3:                pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__accumulate:
                        sub              rsp, 2176
                        mov              qword ptr [rsp + 2152], rcx
                        mov              qword ptr [rsp + 2160], rdx
                        mov              rdi, rsp
                        add              rdi, 1936
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 6
                        call             rt_icn_zframe_args_install@PLT
accumulate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_charset_α:      mov              r11, 27
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], -1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n65_call_builtin_icon_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn28:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn28]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n69_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_call_α
n65_call_builtin_icon_β:
                        mov              r11, 28;                             jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1832], rax
                        mov              qword ptr [rsp + 1840], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn29:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn29]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n69_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n67_call_builtin_icon_α
n66_call_β:             mov              r11, 29
                        mov              r14, qword ptr [rsp + 1840];         jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn139:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n69_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_assign_α
n67_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n69_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_charset_α:      mov              r11, 32
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], -1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n70_call_builtin_icon_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn33:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn33]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n72_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_call_α
n70_call_builtin_icon_β:
                        mov              r11, 33;                             jmp   n72_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 34
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        mov              qword ptr [rsp + 1664], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn34:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn34]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n72_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_lit_charset_α
n71_call_β:             mov              r11, 34
                        mov              r14, qword ptr [rsp + 1664];         jmp   n72_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_charset_α:      mov              r11, 35
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], -1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n73_call_builtin_gen_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_gen_α: mov              r11, 36
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        mov              qword ptr [rsp + 1600], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx145_60:              .section         .rodata
.Lbynamegenfn36:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn36]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        lea              rcx, [rsp + 1600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n76_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_call_α
n73_call_builtin_gen_β: mov              r11, 36;                             jmp   .Lx145_60
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             mov              r11, 37
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1528], rax
                        mov              qword ptr [rsp + 1536], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn37:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn37]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n73_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_assign_α
n74_call_β:             mov              r11, 37
                        mov              r14, qword ptr [rsp + 1536];         jmp   n73_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n76_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_charset_α:      mov              r11, 39
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], -1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n77_call_builtin_icon_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn40:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn40]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n79_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_call_α
n77_call_builtin_icon_β:
                        mov              r11, 40;                             jmp   n79_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        mov              qword ptr [rsp + 1408], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn41:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n79_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_lit_charset_α
n78_call_β:             mov              r11, 41
                        mov              r14, qword ptr [rsp + 1408];         jmp   n79_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_charset_α:      mov              r11, 42
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n80_call_builtin_gen_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_gen_α: mov              r11, 43
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        mov              qword ptr [rsp + 1344], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx152_60:              .section         .rodata
.Lbynamegenfn43:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn43]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 1
                        lea              rcx, [rsp + 1344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n83_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_call_α
n80_call_builtin_gen_β: mov              r11, 43;                             jmp   .Lx152_60
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             mov              r11, 44
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        mov              qword ptr [rsp + 1280], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn44:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn44]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n80_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_assign_α
n81_call_β:             mov              r11, 44
                        mov              r14, qword ptr [rsp + 1280];         jmp   n80_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n83_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_disjunction_α:      mov              r11, 46
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n84_var_α
n83_disjunction_as:     mov              r11, 46
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx156_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n96_lit_charset_α
.Lx156_0:                                                                     jmp   n96_lit_charset_α
n83_disjunction_β:      mov              r11, 46
                        mov              eax, dword ptr [rsp + 896];          jmp   n92_call_builtin_gen_β
n83_disjunction_af:     mov              r11, 46
                        add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896];          jmp   n96_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n85_lit_string_α
n84_var_β:              mov              r11, 47;                             jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 7
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n86_call_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          " caller"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 49
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn49:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn49]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n83_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_call_α
n86_call_β:             mov              r11, 49;                             jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             mov              r11, 50
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              qword ptr [rsp + 1152], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn50:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn50]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n83_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_binop_α
n87_call_β:             mov              r11, 50
                        mov              r14, qword ptr [rsp + 1152];         jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            mov              r11, 51
                        mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              r11, 53
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 952], rax;          jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_charset_α:      mov              r11, 54
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n92_call_builtin_gen_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_gen_α: mov              r11, 55
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        mov              qword ptr [rsp + 1056], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx167_60:              .section         .rodata
.Lbynamegenfn55:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn55]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 1
                        lea              rcx, [rsp + 1056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n96_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_call_α
n92_call_builtin_gen_β: mov              r11, 55;                             jmp   .Lx167_60
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 56
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        mov              qword ptr [rsp + 992], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn56:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn56]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n92_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_binop_α
n93_call_β:             mov              r11, 56
                        mov              r14, qword ptr [rsp + 992];          jmp   n92_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:            mov              r11, 57
                        mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n83_disjunction_as
n95_assign_β:           mov              r11, 58;                             jmp   n96_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_charset_α:      mov              r11, 59
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], -1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n97_call_builtin_icon_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn60:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn60]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n99_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_call_α
n97_call_builtin_icon_β:
                        mov              r11, 60;                             jmp   n99_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 61
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        mov              qword ptr [rsp + 784], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn61:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn61]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n99_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_lit_charset_α
n98_call_β:             mov              r11, 61
                        mov              r14, qword ptr [rsp + 784];          jmp   n99_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_charset_α:      mov              r11, 62
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], -1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n100_call_builtin_icon_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn63:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn63]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n104_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n101_call_α
n100_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            mov              r11, 64
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              qword ptr [rsp + 656], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn64:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn64]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        push             rax
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
                        cmp              al, 104;                             je    n104_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_call_builtin_icon_α
n101_call_β:            mov              r11, 64
                        mov              r14, qword ptr [rsp + 656];          jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn178:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n104_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_assign_α
n102_call_builtin_icon_β:
                        mov              r11, 65;                             jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 66
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 568], rax;          jmp   n105_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        mov              r11, 68
                        lea              rsi, [rsp + 560]
                        call             fixname_dcα;                         jmp   .Lx183_2
.Lx183_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx183_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx183_29:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n107_var_α
                                                                              jmp   n106_assign_α
n105_call_proc_staged_β:
                        mov              r11, 68;                             jmp   n107_var_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "fixname"
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              r11, 69
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              r11, 70
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 504], rax;          jmp   n108_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        mov              r11, 71
                        lea              rsi, [rsp + 496]
                        call             fixname_dcα;                         jmp   .Lx188_2
.Lx188_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx188_29
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
.Lx188_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n110_var_α
                                                                              jmp   n109_assign_α
n108_call_proc_staged_β:
                        mov              r11, 71;                             jmp   n110_var_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "fixname"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             mov              r11, 73
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 440], rax;          jmp   n111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              r11, 74
                        lea              rsi, [rsp + 432]
                        call             lookup_dcα;                          jmp   .Lx193_2
.Lx193_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx193_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lx193_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n113_var_α
                                                                              jmp   n112_assign_α
n111_call_proc_staged_β:
                        mov              r11, 74;                             jmp   n113_var_α
.Lx193_0:               .quad            .Lx193_0_s
.Lx193_0_s:             .string          "lookup"
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 75
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             mov              r11, 76
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 312], rax;          jmp   n114_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_field_var_α:       mov              r11, 77
                        mov              rdi, qword ptr [rip + .Lx197_0]
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n119_var_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n115_deref_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n115_deref_α:           mov              r11, 78
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n119_var_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              r11, 79
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 376], rax;          jmp   n117_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:           mov              r11, 80
                        mov              eax, dword ptr [rsp + 352]
                        mov              ecx, dword ptr [rsp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx201_2
                        mov              rax, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 1960]
                        add              rax, rdx
                        mov              qword ptr [rsp + 336], 3
                        mov              qword ptr [rsp + 344], rax;          jmp   .Lx201_7
.Lx201_2:               and              edx, 1;                              jz    .Lx201_0
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rsp + 1960]
                        cmp              al, 5;                               je    .Lx201_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx201_4
.Lx201_3:               movq             xmm0, rsi
.Lx201_4:               cmp              cl, 5;                               je    .Lx201_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx201_6
.Lx201_5:               movq             xmm1, rdi
.Lx201_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 336], 5
                        mov              qword ptr [rsp + 344], rax
.Lx201_7:                                                                     jmp   n118_assign_var_α
.Lx201_0:               mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n119_var_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_var_α:      mov              r11, 81
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n119_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 216], rax;          jmp   n120_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_field_var_α:       mov              r11, 83
                        mov              rdi, qword ptr [rip + .Lx205_0]
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n125_var_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n121_deref_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "ncalls"
#-----------------------------------------------------------------------------------------------------------------------
n121_deref_α:           mov              r11, 84
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n125_var_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             mov              r11, 85
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 280], rax;          jmp   n123_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:           mov              r11, 86
                        mov              eax, dword ptr [rsp + 256]
                        mov              ecx, dword ptr [rsp + 2000]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx209_2
                        mov              rax, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 2008]
                        add              rax, rdx
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   .Lx209_7
.Lx209_2:               and              edx, 1;                              jz    .Lx209_0
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdi, qword ptr [rsp + 2008]
                        cmp              al, 5;                               je    .Lx209_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx209_4
.Lx209_3:               movq             xmm0, rsi
.Lx209_4:               cmp              cl, 5;                               je    .Lx209_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx209_6
.Lx209_5:               movq             xmm1, rdi
.Lx209_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 240], 5
                        mov              qword ptr [rsp + 248], rax
.Lx209_7:                                                                     jmp   n124_assign_var_α
.Lx209_0:               mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 2000]
                        mov              rcx, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n125_var_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_var_α:      mov              r11, 87
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n125_var_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             mov              r11, 88
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 184], rax;          jmp   n126_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        mov              r11, 89
                        lea              rsi, [rsp + 176]
                        call             lookup_dcα;                          jmp   .Lx214_2
.Lx214_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx214_29
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
.Lx214_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n128_var_α
                                                                              jmp   n127_assign_α
n126_call_proc_staged_β:
                        mov              r11, 89;                             jmp   n128_var_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "lookup"
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              r11, 90
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             mov              r11, 91
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 40], rax;           jmp   n129_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_field_var_α:       mov              r11, 92
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        mov              rsi, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n134_return_α
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n130_deref_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "tcalled"
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:           mov              r11, 93
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n134_return_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 104], rax;          jmp   n132_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           mov              r11, 95
                        mov              eax, dword ptr [rsp + 80]
                        mov              ecx, dword ptr [rsp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx222_2
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 1960]
                        add              rax, rdx
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   .Lx222_7
.Lx222_2:               and              edx, 1;                              jz    .Lx222_0
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdi, qword ptr [rsp + 1960]
                        cmp              al, 5;                               je    .Lx222_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx222_4
.Lx222_3:               movq             xmm0, rsi
.Lx222_4:               cmp              cl, 5;                               je    .Lx222_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx222_6
.Lx222_5:               movq             xmm1, rdi
.Lx222_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 64], 5
                        mov              qword ptr [rsp + 72], rax
.Lx222_7:                                                                     jmp   n133_assign_var_α
.Lx222_0:               mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n134_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_var_α:      mov              r11, 96
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n134_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n134_return_α
#-----------------------------------------------------------------------------------------------------------------------
n134_return_α:          mov              r11, 97
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   accumulate_γ
#-----------------------------------------------------------------------------------------------------------------------
accumulate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
accumulate_β:
                                                                              jmp   accumulate_ω
#-----------------------------------------------------------------------------------------------------------------------
accumulate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2152]
                        add              rsp, 2176;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
accumulate_ω:
                        mov              rcx, qword ptr [rsp + 2160]
                        add              rsp, 2176;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
accumulate_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx225_2]
                        lea              rdx, [rip + .Lx225_3];               jmp   FN__accumulate
.Lx225_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx225_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__fixname:
                        sub              rsp, 736
                        mov              qword ptr [rsp + 712], rcx
                        mov              qword ptr [rsp + 720], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
fixname_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 664], rax;          jmp   n227_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n227_scan_enter_α:      mov              r11, 99
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
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
                        mov              r14, 0;                              jmp   n228_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n228_disjunction_α:     mov              r11, 100
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n249_lit_string_α
n228_disjunction_as:    mov              r11, 100
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx257_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n229_lit_integer_α
.Lx257_0:               cmp              eax, 1;                              jne   .Lx257_1
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax;          jmp   n229_lit_integer_α
.Lx257_1:               cmp              eax, 2;                              jne   .Lx257_2
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 152], rax;          jmp   n229_lit_integer_α
.Lx257_2:                                                                     jmp   n229_lit_integer_α
n228_disjunction_β:     mov              r11, 100
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n228_disjunction_af
                        cmp              eax, 1;                              je    n243_scan_upto_β
                                                                              jmp   n236_scan_upto_β
n228_disjunction_af:    mov              r11, 100
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n239_lit_string_α
                        cmp              eax, 2;                              je    n232_lit_string_α
                                                                              jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n230_scan_tab_α
.Lx258_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n230_scan_tab_α:        mov              r11, 102
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx260_0
                        add              rax, r15
                        add              rax, 1
.Lx260_0:               cmp              rax, 1;                              jl    fixname_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    fixname_ω
                        mov              qword ptr [rsp + 112], r14
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
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n231_return_α
n230_scan_tab_β:        mov              r11, 102
                        mov              r14, qword ptr [rsp + 112];          jmp   fixname_ω
#-----------------------------------------------------------------------------------------------------------------------
n231_return_α:          mov              r11, 103
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   fixname_γ
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 4
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n233_scan_match_α
n232_lit_string_β:      mov              r11, 104;                            jmp   n228_disjunction_af
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "p_l$"
#-----------------------------------------------------------------------------------------------------------------------
n233_scan_match_α:      mov              r11, 105
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 4;                              jl    n228_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 4
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
                        test             eax, eax;                            jne   n228_disjunction_af
                        mov              qword ptr [rsp + 608], 3
                        mov              rax, r14
                        add              rax, 5
                        mov              qword ptr [rsp + 616], rax;          jmp   n234_scan_tab_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "p_l$"
#-----------------------------------------------------------------------------------------------------------------------
n234_scan_tab_α:        mov              r11, 106
                        mov              rax, qword ptr [rsp + 616]
                        cmp              rax, 1;                              jge   .Lx266_0
                        add              rax, r15
                        add              rax, 1
.Lx266_0:               cmp              rax, 1;                              jl    n228_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n228_disjunction_af
                        mov              qword ptr [rsp + 592], r14
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
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n235_lit_charset_α
n234_scan_tab_β:        mov              r11, 106
                        mov              r14, qword ptr [rsp + 592];          jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_charset_α:     mov              r11, 107
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], -1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n236_scan_upto_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n236_scan_upto_α:       mov              r11, 108
                        mov              qword ptr [rsp + 544], r14
.Lx269_0:               mov              rax, qword ptr [rsp + 544]
                        cmp              rax, r15;                            jge   n234_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx269_2]
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
                        pop              rax;                                 je    .Lx269_1
                        mov              qword ptr [rsp + 528], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 536], rax;          jmp   n237_scan_tab_α
.Lx269_1:               inc              qword ptr [rsp + 544];               jmp   .Lx269_0
n236_scan_upto_β:       mov              r11, 108
                        inc              qword ptr [rsp + 544];               jmp   .Lx269_0
.Lx269_2:               .quad            .Lx269_2_s
.Lx269_2_s:             .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n237_scan_tab_α:        mov              r11, 109
                        mov              rax, qword ptr [rsp + 536]
                        cmp              rax, 1;                              jge   .Lx271_0
                        add              rax, r15
                        add              rax, 1
.Lx271_0:               cmp              rax, 1;                              jl    n236_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n236_scan_upto_β
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
                        mov              qword ptr [rsp + 504], rdx;          jmp   n238_conjunction_α
n237_scan_tab_β:        mov              r11, 109
                        mov              r14, qword ptr [rsp + 512];          jmp   n236_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n238_conjunction_α:     mov              r11, 110
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax;          jmp   n228_disjunction_as
n238_conjunction_β:     mov              r11, 110;                            jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 5
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n240_scan_match_α
n239_lit_string_β:      mov              r11, 111;                            jmp   n228_disjunction_af
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "java/"
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_match_α:      mov              r11, 112
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5;                              jl    n228_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
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
                        test             eax, eax;                            jne   n228_disjunction_af
                        mov              qword ptr [rsp + 432], 3
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rsp + 440], rax;          jmp   n241_scan_tab_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "java/"
#-----------------------------------------------------------------------------------------------------------------------
n241_scan_tab_α:        mov              r11, 113
                        mov              rax, qword ptr [rsp + 440]
                        cmp              rax, 1;                              jge   .Lx277_0
                        add              rax, r15
                        add              rax, 1
.Lx277_0:               cmp              rax, 1;                              jl    n228_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n228_disjunction_af
                        mov              qword ptr [rsp + 416], r14
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
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n242_lit_charset_α
n241_scan_tab_β:        mov              r11, 113
                        mov              r14, qword ptr [rsp + 416];          jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_charset_α:     mov              r11, 114
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], -1
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n243_scan_upto_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n243_scan_upto_α:       mov              r11, 115
                        mov              qword ptr [rsp + 352], r14
.Lx280_0:               mov              rax, qword ptr [rsp + 352]
                        cmp              rax, r15;                            jge   n241_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx280_2]
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
                        pop              rax;                                 je    .Lx280_1
                        mov              qword ptr [rsp + 336], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 344], rax;          jmp   n244_lit_integer_α
.Lx280_1:               inc              qword ptr [rsp + 352];               jmp   .Lx280_0
n243_scan_upto_β:       mov              r11, 115
                        inc              qword ptr [rsp + 352];               jmp   .Lx280_0
.Lx280_2:               .quad            .Lx280_2_s
.Lx280_2_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              r11, 116
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n245_coerce_numeric_α
.Lx281_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:  mov              r11, 117
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 5;                               je    .Lx283_1
                        cmp              al, 3;                               jne   .Lx283_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 3;                               jne   .Lx283_0
.Lx283_1:               mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 328], rax;          jmp   n246_binop_α
.Lx283_0:               lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           mov              r11, 118
                        mov              eax, dword ptr [rsp + 320]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx284_2
                        mov              rax, qword ptr [rsp + 328]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax;          jmp   .Lx284_7
.Lx284_2:               and              edx, 1;                              jz    .Lx284_0
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx284_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx284_4
.Lx284_3:               movq             xmm0, rsi
.Lx284_4:               cmp              cl, 5;                               je    .Lx284_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx284_6
.Lx284_5:               movq             xmm1, rdi
.Lx284_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 304], 5
                        mov              qword ptr [rsp + 312], rax
.Lx284_7:                                                                     jmp   n247_scan_tab_α
.Lx284_0:               mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n241_scan_tab_β
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n247_scan_tab_α:        mov              r11, 119
                        mov              rax, qword ptr [rsp + 312]
                        cmp              rax, 1;                              jge   .Lx286_0
                        add              rax, r15
                        add              rax, 1
.Lx286_0:               cmp              rax, 1;                              jl    n243_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n243_scan_upto_β
                        mov              qword ptr [rsp + 288], r14
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
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n248_conjunction_α
n247_scan_tab_β:        mov              r11, 119
                        mov              r14, qword ptr [rsp + 288];          jmp   n243_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n248_conjunction_α:     mov              r11, 120
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax;          jmp   n228_disjunction_as
n248_conjunction_β:     mov              r11, 120;                            jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 5
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n250_scan_match_α
n249_lit_string_β:      mov              r11, 121;                            jmp   n228_disjunction_af
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "jcon/"
#-----------------------------------------------------------------------------------------------------------------------
n250_scan_match_α:      mov              r11, 122
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5;                              jl    n228_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx290_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
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
                        test             eax, eax;                            jne   n228_disjunction_af
                        mov              qword ptr [rsp + 208], 3
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rsp + 216], rax;          jmp   n251_scan_tab_α
.Lx290_0:               .quad            .Lx290_0_s
.Lx290_0_s:             .string          "jcon/"
#-----------------------------------------------------------------------------------------------------------------------
n251_scan_tab_α:        mov              r11, 123
                        mov              rax, qword ptr [rsp + 216]
                        cmp              rax, 1;                              jge   .Lx292_0
                        add              rax, r15
                        add              rax, 1
.Lx292_0:               cmp              rax, 1;                              jl    n228_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n228_disjunction_af
                        mov              qword ptr [rsp + 192], r14
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n228_disjunction_as
n251_scan_tab_β:        mov              r11, 123
                        mov              r14, qword ptr [rsp + 192];          jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
fixname_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fixname_β:
                                                                              jmp   fixname_ω
#-----------------------------------------------------------------------------------------------------------------------
fixname_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 712]
                        add              rsp, 736;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fixname_ω:
                        mov              rcx, qword ptr [rsp + 720]
                        add              rsp, 736;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fixname_dcα:
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
                        lea              rcx, [rip + .Lx293_2]
                        lea              rdx, [rip + .Lx293_3];               jmp   FN__fixname
.Lx293_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx293_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__pad:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
pad_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n294_disjunction_α:     mov              r11, 124
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n297_var_α
n294_disjunction_as:    mov              r11, 124
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx306_0
                                                                              jmp   pad_γ
.Lx306_0:               cmp              eax, 1;                              jne   .Lx306_1
                                                                              jmp   pad_γ
.Lx306_1:                                                                     jmp   pad_γ
n294_disjunction_β:     mov              r11, 124
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    pad_ω
                                                                              jmp   pad_ω
n294_disjunction_af:    mov              r11, 124
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n295_var_α
                                                                              jmp   pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n296_return_α
n295_var_β:             mov              r11, 125;                            jmp   pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_return_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   pad_γ
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n298_unop_α
n297_var_β:             mov              r11, 127;                            jmp   n294_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_unop_α:            mov              r11, 128
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 232], rax;          jmp   n300_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_test_α:      mov              r11, 130
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 112;                             je    .Lx315_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx315_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 3;                               jne   .Lx315_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx315_2
.Lx315_1:               mov              rax, qword ptr [rsp + 200]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jge   n294_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rcx;          jmp   n301_var_α
.Lx315_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        lea              r9, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx315_1
                        cmp              eax, 1;                              je    n294_disjunction_af
                                                                              jmp   n301_var_α
.Lx315_2:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n294_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rax;          jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n302_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 168], rax;          jmp   n303_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_icon_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn321:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    pad_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n304_return_α
n303_call_builtin_icon_β:
                        mov              r11, 133;                            jmp   pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_return_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   pad_γ
#-----------------------------------------------------------------------------------------------------------------------
pad_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pad_β:
                                                                              jmp   pad_ω
#-----------------------------------------------------------------------------------------------------------------------
pad_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pad_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pad_dcα:
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
                        lea              rcx, [rip + .Lx323_2]
                        lea              rdx, [rip + .Lx323_3];               jmp   FN__pad
.Lx323_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx323_3:               pop              r12
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
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ptab"
.Lgvan1:                .string          "lookup__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 4352
                        mov              qword ptr [rsp + 4328], rcx
                        mov              qword ptr [rsp + 4336], rdx
                        mov              rdi, rsp
                        add              rdi, 4016
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 9
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n324_disjunction_α:     mov              r11, 135
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              dword ptr [rsp + 3824], 0;           jmp   n325_var_ref_α
n324_disjunction_as:    mov              r11, 135
                        mov              eax, dword ptr [rsp + 3824]
                        cmp              eax, 0;                              jne   .Lx512_0
                        mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n334_disjunction_α
.Lx512_0:                                                                     jmp   n334_disjunction_α
n324_disjunction_β:     mov              r11, 135
                        mov              eax, dword ptr [rsp + 3824];         jmp   n334_disjunction_α
n324_disjunction_af:    mov              r11, 135
                        add              dword ptr [rsp + 3824], 1
                        mov              eax, dword ptr [rsp + 3824];         jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n326_lit_integer_α
n325_var_ref_β:         mov              r11, 136;                            jmp   n324_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rsp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n327_subscript_α
.Lx515_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:       mov              r11, 138
                        mov              rdi, qword ptr [rsp + 3936]
                        mov              rsi, qword ptr [rsp + 3944]
                        mov              rdx, qword ptr [rsp + 3952]
                        mov              rcx, qword ptr [rsp + 3960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n324_disjunction_af
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx;         jmp   n328_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_deref_α:           mov              r11, 139
                        mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n324_disjunction_af
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx;         jmp   n329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 2
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n330_binop_test_α
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "-t"
#-----------------------------------------------------------------------------------------------------------------------
n330_binop_test_α:      mov              r11, 141
                        mov              rdi, qword ptr [rsp + 3984]
                        mov              rsi, qword ptr [rsp + 3992]
                        mov              rdx, qword ptr [rsp + 4000]
                        mov              rcx, qword ptr [rsp + 4008]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n324_disjunction_af
                        mov              rdi, qword ptr [rsp + 4000]
                        mov              rsi, qword ptr [rsp + 4008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             mov              r11, 142
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n332_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_icon_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3880], rax
                        .section         .rodata
.Lrkfn523:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]
                        lea              rsi, [rsp + 3872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx
                        cmp              al, 104;                             je    n334_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n333_assign_α
n332_call_builtin_icon_β:
                        mov              r11, 143;                            jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 3856]
                        mov              rdx, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx;         jmp   n324_disjunction_as
n333_assign_β:          mov              r11, 144;                            jmp   n334_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:     mov              r11, 145
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              dword ptr [rsp + 3344], 0;           jmp   n493_var_α
n334_disjunction_as:    mov              r11, 145
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 0;                              jne   .Lx526_0
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n335_var_α
.Lx526_0:               cmp              eax, 1;                              jne   .Lx526_1
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n335_var_α
.Lx526_1:                                                                     jmp   n335_var_α
n334_disjunction_β:     mov              r11, 145
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 0;                              je    n497_disjunction_β
                                                                              jmp   n335_var_α
n334_disjunction_af:    mov              r11, 145
                        add              dword ptr [rsp + 3344], 1
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 1;                              je    n491_keyword_icon_α
                                                                              jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n336_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_icon_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn530:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn530]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n352_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n337_assign_α
n336_call_builtin_icon_β:
                        mov              r11, 147;                            jmp   n352_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              r11, 148
                        mov              rax, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n338_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n339_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n339_scan_enter_α:      mov              r11, 150
                        mov              rdi, qword ptr [rsp + 3312]
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
                        mov              r14, 0;                              jmp   n340_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n340_disjunction_α:     mov              r11, 151
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              dword ptr [rsp + 3216], 0;           jmp   n349_lit_string_α
n340_disjunction_as:    mov              r11, 151
                        mov              eax, dword ptr [rsp + 3216]
                        cmp              eax, 0;                              jne   .Lx537_0
                                                                              jmp   n341_disjunction_α
.Lx537_0:                                                                     jmp   n341_disjunction_α
n340_disjunction_β:     mov              r11, 151
                        mov              eax, dword ptr [rsp + 3216];         jmp   n341_disjunction_α
n340_disjunction_af:    mov              r11, 151
                        add              dword ptr [rsp + 3216], 1
                        mov              eax, dword ptr [rsp + 3216];         jmp   n341_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n341_disjunction_α:     mov              r11, 152
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              dword ptr [rsp + 3136], 0;           jmp   n346_lit_charset_α
n341_disjunction_as:    mov              r11, 152
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              eax, 0;                              jne   .Lx539_0
                                                                              jmp   n342_call_proc_staged_α
.Lx539_0:                                                                     jmp   n342_call_proc_staged_α
n341_disjunction_β:     mov              r11, 152
                        mov              eax, dword ptr [rsp + 3136];         jmp   n342_call_proc_staged_α
n341_disjunction_af:    mov              r11, 152
                        add              dword ptr [rsp + 3136], 1
                        mov              eax, dword ptr [rsp + 3136];         jmp   n342_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_proc_staged_α:
                        mov              r11, 153
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             accumulate_dcα;                      jmp   .Lx541_2
.Lx541_2:               push             rax
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
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx541_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
.Lx541_29:              mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        cmp              al, 104;                             je    n345_scan_α
                                                                              jmp   n343_conjunction_α
n342_call_proc_staged_β:
                        mov              r11, 153;                            jmp   n345_scan_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "accumulate"
#-----------------------------------------------------------------------------------------------------------------------
n343_conjunction_α:     mov              r11, 154
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n344_scan_α
n343_conjunction_β:     mov              r11, 154;                            jmp   n345_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n344_scan_α:            mov              r11, 155
                        mov              rax, qword ptr [rsp + 3072]
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
                        mov              r15, qword ptr [rsp + 3024];         jmp   n335_var_α
n344_scan_β:            mov              r11, 155;                            jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_scan_α:            mov              r11, 156
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
                        mov              r15, qword ptr [rsp + 3024];         jmp   n335_var_α
n345_scan_β:            mov              r11, 156;                            jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_charset_α:     mov              r11, 157
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], -1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n347_scan_any_α
n346_lit_charset_β:     mov              r11, 157;                            jmp   n348_var_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n347_scan_any_α:        mov              r11, 158
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n348_var_α
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx549_0]
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
                        test             rax, rax;                            je    n348_var_α
                        mov              qword ptr [rsp + 3168], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 3176], rax;         jmp   n341_disjunction_af
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 159
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0;           jmp   n352_make_list_α
n348_var_β:             mov              r11, 159;                            jmp   n341_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 3296], 2            # result
                        mov              dword ptr [rsp + 3300], 5
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n350_scan_match_α
n349_lit_string_β:      mov              r11, 160;                            jmp   n340_disjunction_af
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n350_scan_match_α:      mov              r11, 161
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5;                              jl    n340_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx553_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
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
                        test             eax, eax;                            jne   n340_disjunction_af
                        mov              qword ptr [rsp + 3264], 3
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rsp + 3272], rax;         jmp   n351_scan_tab_α
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n351_scan_tab_α:        mov              r11, 162
                        mov              rax, qword ptr [rsp + 3272]
                        cmp              rax, 1;                              jge   .Lx555_0
                        add              rax, r15
                        add              rax, 1
.Lx555_0:               cmp              rax, 1;                              jl    n340_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n340_disjunction_af
                        mov              qword ptr [rsp + 3248], r14
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
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx;         jmp   n335_var_α
n351_scan_tab_β:        mov              r11, 162
                        mov              r14, qword ptr [rsp + 3248];         jmp   n340_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n352_make_list_α:       mov              r11, 163
                        lea              rdi, [rsp + 2928]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n353_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:          mov              r11, 164
                        mov              rax, qword ptr [rsp + 2912]
                        mov              rdx, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx;         jmp   n354_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n355_assign_α
.Lx559_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_α:          mov              r11, 166
                        mov              rax, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             mov              r11, 167
                        mov              rax, qword ptr [r9 + 0]              # ptab
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 2352], rax          # result
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n357_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n357_iterate_α:         mov              r11, 168
                        mov              qword ptr [rsp + 2336], 0
.Lx563_0:               mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              rdx, qword ptr [rsp + 2336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              rax, 104;                            je    n387_disjunction_α
                                                                              jmp   n358_assign_α
n357_iterate_β:         mov              r11, 168
                        inc              qword ptr [rsp + 2336];              jmp   .Lx563_0
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rsp + 2320]
                        mov              rdx, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n359_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n359_bound_α:           mov              r11, 170
                        mov              qword ptr [rsp + 2368], rsp;         jmp   n360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             mov              r11, 171
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n361_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n361_field_var_α:       mov              r11, 172
                        mov              rdi, qword ptr [rip + .Lx569_0]
                        mov              rsi, qword ptr [rsp + 2752]
                        mov              rdx, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n370_disjunction_α
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n362_var_α
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             mov              r11, 173
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n363_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n363_field_get_α:       mov              r11, 174
                        mov              rdi, qword ptr [rip + .Lx572_0]
                        mov              rsi, qword ptr [rsp + 2848]
                        mov              rdx, qword ptr [rsp + 2856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n370_disjunction_α
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx;         jmp   n364_var_α
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n365_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n365_field_get_α:       mov              r11, 176
                        mov              rdi, qword ptr [rip + .Lx575_0]
                        mov              rsi, qword ptr [rsp + 2880]
                        mov              rdx, qword ptr [rsp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n370_disjunction_α
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n366_coerce_numeric_α
.Lx575_0:               .quad            .Lx575_0_s
.Lx575_0_s:             .string          "tcalled"
#-----------------------------------------------------------------------------------------------------------------------
n366_coerce_numeric_α:  mov              r11, 177
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              al, 5;                               je    .Lx577_1
                        cmp              al, 3;                               jne   .Lx577_0
                        mov              eax, dword ptr [rsp + 2864]
                        cmp              al, 3;                               jne   .Lx577_0
.Lx577_1:               mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n367_coerce_numeric_α
.Lx577_0:               lea              rdi, [rsp + 2832]
                        lea              rsi, [rsp + 2864]
                        lea              rdx, [rsp + 2816]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n367_coerce_numeric_α:  mov              r11, 178
                        mov              eax, dword ptr [rsp + 2864]
                        cmp              al, 5;                               je    .Lx579_1
                        cmp              al, 3;                               jne   .Lx579_0
                        mov              eax, dword ptr [rsp + 2832]
                        cmp              al, 3;                               jne   .Lx579_0
.Lx579_1:               mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n368_binop_α
.Lx579_0:               lea              rdi, [rsp + 2864]
                        lea              rsi, [rsp + 2832]
                        lea              rdx, [rsp + 2800]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n368_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n368_binop_α:           mov              r11, 179
                        mov              eax, dword ptr [rsp + 2816]
                        mov              ecx, dword ptr [rsp + 2800]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx580_2
                        mov              rax, qword ptr [rsp + 2824]
                        mov              rdx, qword ptr [rsp + 2808]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 2784], 3
                        mov              qword ptr [rsp + 2792], rax;         jmp   .Lx580_7
.Lx580_2:               and              edx, 1;                              jz    .Lx580_0
                        mov              rsi, qword ptr [rsp + 2824]
                        mov              rdi, qword ptr [rsp + 2808]
                        cmp              al, 5;                               je    .Lx580_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx580_4
.Lx580_3:               movq             xmm0, rsi
.Lx580_4:               cmp              cl, 5;                               je    .Lx580_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx580_6
.Lx580_5:               movq             xmm1, rdi
.Lx580_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2784], 5
                        mov              qword ptr [rsp + 2792], rax
.Lx580_7:                                                                     jmp   n369_assign_var_α
.Lx580_0:               mov              rdi, qword ptr [rsp + 2816]
                        mov              rsi, qword ptr [rsp + 2824]
                        mov              rdx, qword ptr [rsp + 2800]
                        mov              rcx, qword ptr [rsp + 2808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n370_disjunction_α
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_var_α:      mov              r11, 180
                        mov              rdi, qword ptr [rsp + 2736]
                        mov              rsi, qword ptr [rsp + 2744]
                        mov              rdx, qword ptr [rsp + 2784]
                        mov              rcx, qword ptr [rsp + 2792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n370_disjunction_α
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n370_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n370_disjunction_α:     mov              r11, 181
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              dword ptr [rsp + 2544], 0;           jmp   n371_var_α
n370_disjunction_as:    mov              r11, 181
                        mov              eax, dword ptr [rsp + 2544]
                        cmp              eax, 0;                              jne   .Lx583_0
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n382_var_α
.Lx583_0:                                                                     jmp   n382_var_α
n370_disjunction_β:     mov              r11, 181
                        mov              eax, dword ptr [rsp + 2544];         jmp   n382_var_α
n370_disjunction_af:    mov              r11, 181
                        add              dword ptr [rsp + 2544], 1
                        mov              eax, dword ptr [rsp + 2544];         jmp   n382_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n372_field_get_α
n371_var_β:             mov              r11, 182;                            jmp   n370_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n372_field_get_α:       mov              r11, 183
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              rsi, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n370_disjunction_af
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n373_lit_integer_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n374_binop_test_α
.Lx587_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n374_binop_test_α:      mov              r11, 185
                        mov              eax, dword ptr [rsp + 2688]
                        cmp              al, 112;                             je    .Lx588_0
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              al, 112;                             je    .Lx588_0
                        mov              eax, dword ptr [rsp + 2688]
                        cmp              al, 3;                               jne   .Lx588_2
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              al, 3;                               jne   .Lx588_2
.Lx588_1:               mov              rax, qword ptr [rsp + 2696]
                        mov              rcx, qword ptr [rsp + 2728]
                        cmp              rax, rcx;                            jle   n370_disjunction_af
                        mov              rcx, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2672], rcx
                        mov              rcx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2680], rcx;         jmp   n375_var_α
.Lx588_0:               mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              rdx, qword ptr [rsp + 2720]
                        mov              rcx, qword ptr [rsp + 2728]
                        mov              r8d, 7
                        lea              r9, [rsp + 2672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx588_1
                        cmp              eax, 1;                              je    n370_disjunction_af
                                                                              jmp   n375_var_α
.Lx588_2:               mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              rdx, qword ptr [rsp + 2720]
                        mov              rcx, qword ptr [rsp + 2728]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n370_disjunction_af
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n377_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n377_field_get_α:       mov              r11, 188
                        mov              rdi, qword ptr [rip + .Lx593_0]
                        mov              rsi, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n382_var_α
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n378_coerce_numeric_α
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n378_coerce_numeric_α:  mov              r11, 189
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx595_1
                        cmp              al, 3;                               jne   .Lx595_0
                        mov              eax, dword ptr [rsp + 2640]
                        cmp              al, 3;                               jne   .Lx595_0
.Lx595_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n379_coerce_numeric_α
.Lx595_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 2640]
                        lea              rdx, [rsp + 2608]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n379_coerce_numeric_α:  mov              r11, 190
                        mov              eax, dword ptr [rsp + 2640]
                        cmp              al, 5;                               je    .Lx597_1
                        cmp              al, 3;                               jne   .Lx597_0
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 3;                               jne   .Lx597_0
.Lx597_1:               mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n380_binop_α
.Lx597_0:               lea              rdi, [rsp + 2640]
                        lea              rsi, [rsp + 4080]
                        lea              rdx, [rsp + 2592]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n380_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n380_binop_α:           mov              r11, 191
                        mov              eax, dword ptr [rsp + 2608]
                        mov              ecx, dword ptr [rsp + 2592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx598_2
                        mov              rax, qword ptr [rsp + 2616]
                        mov              rdx, qword ptr [rsp + 2600]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2576], 3
                        mov              qword ptr [rsp + 2584], rax;         jmp   .Lx598_7
.Lx598_2:               and              edx, 1;                              jz    .Lx598_0
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              rdi, qword ptr [rsp + 2600]
                        cmp              al, 5;                               je    .Lx598_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx598_4
.Lx598_3:               movq             xmm0, rsi
.Lx598_4:               cmp              cl, 5;                               je    .Lx598_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx598_6
.Lx598_5:               movq             xmm1, rdi
.Lx598_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2576], 5
                        mov              qword ptr [rsp + 2584], rax
.Lx598_7:                                                                     jmp   n381_assign_α
.Lx598_0:               mov              rdi, qword ptr [rsp + 2608]
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              rdx, qword ptr [rsp + 2592]
                        mov              rcx, qword ptr [rsp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n382_var_α
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n381_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n370_disjunction_as
n381_assign_β:          mov              r11, 192;                            jmp   n382_var_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n383_var_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n384_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_icon_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn605:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn605]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n386_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_conjunction_α
n384_call_builtin_icon_β:
                        mov              r11, 195;                            jmp   n386_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n385_conjunction_α:     mov              r11, 196
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n386_unmark_α
n385_conjunction_β:     mov              r11, 196;                            jmp   n386_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n386_unmark_α:          mov              r11, 197
                        mov              rsp, qword ptr [rsp + 2368];         jmp   n357_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n387_disjunction_α:     mov              r11, 198
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              dword ptr [rsp + 2048], 0;           jmp   n392_var_α
n387_disjunction_as:    mov              r11, 198
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 0;                              jne   .Lx610_0
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n398_lit_string_α
.Lx610_0:               cmp              eax, 1;                              jne   .Lx610_1
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n398_lit_string_α
.Lx610_1:                                                                     jmp   n398_lit_string_α
n387_disjunction_β:     mov              r11, 198
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 0;                              je    n398_lit_string_α
                                                                              jmp   n398_lit_string_α
n387_disjunction_af:    mov              r11, 198
                        add              dword ptr [rsp + 2048], 1
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 1;                              je    n388_var_α
                                                                              jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n389_lit_integer_α
n388_var_β:             mov              r11, 199;                            jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 200
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n390_call_builtin_icon_α
.Lx613_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn615:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn615]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327842
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n398_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n391_assign_α
n390_call_builtin_icon_β:
                        mov              r11, 201;                            jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 202
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n387_disjunction_as
n391_assign_β:          mov              r11, 202;                            jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 203
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n393_unop_test_α
n392_var_β:             mov              r11, 203;                            jmp   n387_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n393_unop_test_α:       mov              r11, 204
                        mov              eax, dword ptr [rsp + 4096]
                        cmp              al, 104;                             je    n387_disjunction_af
                        cmp              eax, 0;                              je    n387_disjunction_af
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     mov              r11, 206
                        mov              qword ptr [rsp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n396_call_builtin_icon_α
.Lx622_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              r11, 207
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        .section         .rodata
.Lrkfn624:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327842
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n398_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n397_assign_α
n396_call_builtin_icon_β:
                        mov              r11, 207;                            jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n387_disjunction_as
n397_assign_β:          mov              r11, 208;                            jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 37
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n399_call_builtin_icon_α
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          "  calls  totaltime   inmethod  method"
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_icon_α:
                        mov              r11, 210
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn628:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n400_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n400_var_α
n399_call_builtin_icon_β:
                        mov              r11, 210;                            jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 104], rax;          jmp   n401_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_icon_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn632:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n402_assign_α
n401_call_builtin_icon_β:
                        mov              r11, 212;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:          mov              r11, 213
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n403_disjunction_α:     mov              r11, 214
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              dword ptr [rsp + 1344], 0;           jmp   n421_var_α
n403_disjunction_as:    mov              r11, 214
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              eax, 0;                              jne   .Lx635_0
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n442_lit_integer_α
.Lx635_0:               cmp              eax, 1;                              jne   .Lx635_1
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n442_lit_integer_α
.Lx635_1:                                                                     jmp   n442_lit_integer_α
n403_disjunction_β:     mov              r11, 214
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              eax, 0;                              je    n442_lit_integer_α
                                                                              jmp   n442_lit_integer_α
n403_disjunction_af:    mov              r11, 214
                        add              dword ptr [rsp + 1344], 1
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              eax, 1;                              je    n404_lit_integer_α
                                                                              jmp   n442_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     mov              r11, 215
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n405_var_α
n404_lit_integer_β:     mov              r11, 215;                            jmp   n442_lit_integer_α
.Lx636_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n406_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n406_field_get_α:       mov              r11, 217
                        mov              rdi, qword ptr [rip + .Lx639_0]
                        mov              rsi, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n407_coerce_numeric_α
.Lx639_0:               .quad            .Lx639_0_s
.Lx639_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n407_coerce_numeric_α:  mov              r11, 218
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              al, 5;                               je    .Lx641_1
                        cmp              al, 3;                               jne   .Lx641_0
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              al, 3;                               jne   .Lx641_0
.Lx641_1:               mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n408_binop_α
.Lx641_0:               lea              rdi, [rsp + 1856]
                        lea              rsi, [rsp + 1840]
                        lea              rdx, [rsp + 1824]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n408_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n408_binop_α:           mov              r11, 219
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1824]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx642_2
                        mov              rax, 100
                        mov              rdx, qword ptr [rsp + 1832]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1808], 3
                        mov              qword ptr [rsp + 1816], rax;         jmp   .Lx642_7
.Lx642_2:               and              edx, 1;                              jz    .Lx642_0
                        mov              rsi, 100
                        mov              rdi, qword ptr [rsp + 1832]
                        cmp              al, 5;                               je    .Lx642_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx642_4
.Lx642_3:               movq             xmm0, rsi
.Lx642_4:               cmp              cl, 5;                               je    .Lx642_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx642_6
.Lx642_5:               movq             xmm1, rdi
.Lx642_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1808], 5
                        mov              qword ptr [rsp + 1816], rax
.Lx642_7:                                                                     jmp   n409_var_α
.Lx642_0:               mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              rcx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 221
                        mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n411_coerce_numeric_α
.Lx645_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n411_coerce_numeric_α:  mov              r11, 222
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx647_1
                        cmp              al, 3;                               jne   .Lx647_0
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              al, 3;                               jne   .Lx647_0
.Lx647_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n412_binop_α
.Lx647_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 1936]
                        lea              rdx, [rsp + 1904]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n412_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n412_binop_α:           mov              r11, 223
                        mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1936]
                        mov              rcx, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n413_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n413_coerce_numeric_α:  mov              r11, 224
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 5;                               je    .Lx650_1
                        cmp              al, 3;                               jne   .Lx650_0
                        mov              eax, dword ptr [rsp + 1888]
                        cmp              al, 3;                               jne   .Lx650_0
.Lx650_1:               mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n414_coerce_numeric_α
.Lx650_0:               lea              rdi, [rsp + 1808]
                        lea              rsi, [rsp + 1888]
                        lea              rdx, [rsp + 1792]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n414_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n414_coerce_numeric_α:  mov              r11, 225
                        mov              eax, dword ptr [rsp + 1888]
                        cmp              al, 5;                               je    .Lx652_1
                        cmp              al, 3;                               jne   .Lx652_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 3;                               jne   .Lx652_0
.Lx652_1:               mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n415_binop_α
.Lx652_0:               lea              rdi, [rsp + 1888]
                        lea              rsi, [rsp + 1808]
                        lea              rdx, [rsp + 1776]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n415_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_α:           mov              r11, 226
                        mov              eax, dword ptr [rsp + 1792]
                        mov              ecx, dword ptr [rsp + 1776]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx653_2
                        mov              rax, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1784]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1760], 3
                        mov              qword ptr [rsp + 1768], rax;         jmp   .Lx653_7
.Lx653_2:               and              edx, 1;                              jz    .Lx653_0
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdi, qword ptr [rsp + 1784]
                        cmp              al, 5;                               je    .Lx653_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx653_4
.Lx653_3:               movq             xmm0, rsi
.Lx653_4:               cmp              cl, 5;                               je    .Lx653_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx653_6
.Lx653_5:               movq             xmm1, rdi
.Lx653_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1760], 5
                        mov              qword ptr [rsp + 1768], rax
.Lx653_7:                                                                     jmp   n416_var_α
.Lx653_0:               mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1776]
                        mov              rcx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n417_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n417_coerce_numeric_α:  mov              r11, 228
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              al, 5;                               je    .Lx657_1
                        cmp              al, 3;                               jne   .Lx657_0
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 3;                               jne   .Lx657_0
.Lx657_1:               mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n418_coerce_numeric_α
.Lx657_0:               lea              rdi, [rsp + 1760]
                        lea              rsi, [rsp + 4080]
                        lea              rdx, [rsp + 1744]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n418_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n418_coerce_numeric_α:  mov              r11, 229
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx659_1
                        cmp              al, 3;                               jne   .Lx659_0
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              al, 3;                               jne   .Lx659_0
.Lx659_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n419_binop_α
.Lx659_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 1760]
                        lea              rdx, [rsp + 1728]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:           mov              r11, 230
                        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rsp + 1712]
                        mov              rdx, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n403_disjunction_as
n420_assign_β:          mov              r11, 231;                            jmp   n442_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n422_field_get_α
n421_var_β:             mov              r11, 232;                            jmp   n403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_field_get_α:       mov              r11, 233
                        mov              rdi, qword ptr [rip + .Lx664_0]
                        mov              rsi, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n403_disjunction_af
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n423_lit_integer_α
.Lx664_0:               .quad            .Lx664_0_s
.Lx664_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:     mov              r11, 234
                        mov              qword ptr [rsp + 1680], 3            # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n424_binop_test_α
.Lx665_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n424_binop_test_α:      mov              r11, 235
                        mov              eax, dword ptr [rsp + 1648]
                        cmp              al, 112;                             je    .Lx666_0
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              al, 112;                             je    .Lx666_0
                        mov              eax, dword ptr [rsp + 1648]
                        cmp              al, 3;                               jne   .Lx666_2
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              al, 3;                               jne   .Lx666_2
.Lx666_1:               mov              rax, qword ptr [rsp + 1656]
                        mov              rcx, qword ptr [rsp + 1688]
                        cmp              rax, rcx;                            jle   n403_disjunction_af
                        mov              rcx, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rcx
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rcx;         jmp   n425_lit_integer_α
.Lx666_0:               mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              r8d, 7
                        lea              r9, [rsp + 1632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx666_1
                        cmp              eax, 1;                              je    n403_disjunction_af
                                                                              jmp   n425_lit_integer_α
.Lx666_2:               mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n403_disjunction_af
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n425_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:     mov              r11, 236
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n426_var_α
.Lx667_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n427_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n427_field_get_α:       mov              r11, 238
                        mov              rdi, qword ptr [rip + .Lx670_0]
                        mov              rsi, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n428_coerce_numeric_α
.Lx670_0:               .quad            .Lx670_0_s
.Lx670_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n428_coerce_numeric_α:  mov              r11, 239
                        mov              eax, dword ptr [rsp + 1520]
                        cmp              al, 5;                               je    .Lx672_1
                        cmp              al, 3;                               jne   .Lx672_0
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              al, 3;                               jne   .Lx672_0
.Lx672_1:               mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n429_binop_α
.Lx672_0:               lea              rdi, [rsp + 1520]
                        lea              rsi, [rsp + 1504]
                        lea              rdx, [rsp + 1488]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n429_binop_α:           mov              r11, 240
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1488]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx673_2
                        mov              rax, 100
                        mov              rdx, qword ptr [rsp + 1496]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1472], 3
                        mov              qword ptr [rsp + 1480], rax;         jmp   .Lx673_7
.Lx673_2:               and              edx, 1;                              jz    .Lx673_0
                        mov              rsi, 100
                        mov              rdi, qword ptr [rsp + 1496]
                        cmp              al, 5;                               je    .Lx673_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx673_4
.Lx673_3:               movq             xmm0, rsi
.Lx673_4:               cmp              cl, 5;                               je    .Lx673_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx673_6
.Lx673_5:               movq             xmm1, rdi
.Lx673_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1472], 5
                        mov              qword ptr [rsp + 1480], rax
.Lx673_7:                                                                     jmp   n430_var_α
.Lx673_0:               mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1488]
                        mov              rcx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n431_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n432_coerce_numeric_α
.Lx676_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n432_coerce_numeric_α:  mov              r11, 243
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx678_1
                        cmp              al, 3;                               jne   .Lx678_0
                        mov              eax, dword ptr [rsp + 1600]
                        cmp              al, 3;                               jne   .Lx678_0
.Lx678_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n433_binop_α
.Lx678_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 1600]
                        lea              rdx, [rsp + 1568]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n433_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n433_binop_α:           mov              r11, 244
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1600]
                        mov              rcx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n434_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n434_coerce_numeric_α:  mov              r11, 245
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              al, 5;                               je    .Lx681_1
                        cmp              al, 3;                               jne   .Lx681_0
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              al, 3;                               jne   .Lx681_0
.Lx681_1:               mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n435_coerce_numeric_α
.Lx681_0:               lea              rdi, [rsp + 1472]
                        lea              rsi, [rsp + 1552]
                        lea              rdx, [rsp + 1456]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n435_coerce_numeric_α:  mov              r11, 246
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              al, 5;                               je    .Lx683_1
                        cmp              al, 3;                               jne   .Lx683_0
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              al, 3;                               jne   .Lx683_0
.Lx683_1:               mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n436_binop_α
.Lx683_0:               lea              rdi, [rsp + 1552]
                        lea              rsi, [rsp + 1472]
                        lea              rdx, [rsp + 1440]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n436_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_α:           mov              r11, 247
                        mov              eax, dword ptr [rsp + 1456]
                        mov              ecx, dword ptr [rsp + 1440]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx684_2
                        mov              rax, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 1448]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1424], 3
                        mov              qword ptr [rsp + 1432], rax;         jmp   .Lx684_7
.Lx684_2:               and              edx, 1;                              jz    .Lx684_0
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdi, qword ptr [rsp + 1448]
                        cmp              al, 5;                               je    .Lx684_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx684_4
.Lx684_3:               movq             xmm0, rsi
.Lx684_4:               cmp              cl, 5;                               je    .Lx684_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx684_6
.Lx684_5:               movq             xmm1, rdi
.Lx684_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1424], 5
                        mov              qword ptr [rsp + 1432], rax
.Lx684_7:                                                                     jmp   n437_var_α
.Lx684_0:               mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n437_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n438_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n438_coerce_numeric_α:  mov              r11, 249
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              al, 5;                               je    .Lx688_1
                        cmp              al, 3;                               jne   .Lx688_0
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 3;                               jne   .Lx688_0
.Lx688_1:               mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n439_coerce_numeric_α
.Lx688_0:               lea              rdi, [rsp + 1424]
                        lea              rsi, [rsp + 4080]
                        lea              rdx, [rsp + 1408]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n439_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n439_coerce_numeric_α:  mov              r11, 250
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx690_1
                        cmp              al, 3;                               jne   .Lx690_0
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              al, 3;                               jne   .Lx690_0
.Lx690_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n440_binop_α
.Lx690_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 1424]
                        lea              rdx, [rsp + 1392]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:           mov              r11, 251
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1392]
                        mov              rcx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n442_lit_integer_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n403_disjunction_as
n441_assign_β:          mov              r11, 252;                            jmp   n442_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:     mov              r11, 253
                        mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n443_var_α
.Lx693_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n444_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n444_field_get_α:       mov              r11, 255
                        mov              rdi, qword ptr [rip + .Lx696_0]
                        mov              rsi, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n459_var_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n445_coerce_numeric_α
.Lx696_0:               .quad            .Lx696_0_s
.Lx696_0_s:             .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n445_coerce_numeric_α:  mov              r11, 256
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 5;                               je    .Lx698_1
                        cmp              al, 3;                               jne   .Lx698_0
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              al, 3;                               jne   .Lx698_0
.Lx698_1:               mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n446_binop_α
.Lx698_0:               lea              rdi, [rsp + 1216]
                        lea              rsi, [rsp + 1200]
                        lea              rdx, [rsp + 1184]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:           mov              r11, 257
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1184]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx699_2
                        mov              rax, 100
                        mov              rdx, qword ptr [rsp + 1192]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax;         jmp   .Lx699_7
.Lx699_2:               and              edx, 1;                              jz    .Lx699_0
                        mov              rsi, 100
                        mov              rdi, qword ptr [rsp + 1192]
                        cmp              al, 5;                               je    .Lx699_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx699_4
.Lx699_3:               movq             xmm0, rsi
.Lx699_4:               cmp              cl, 5;                               je    .Lx699_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx699_6
.Lx699_5:               movq             xmm1, rdi
.Lx699_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1168], 5
                        mov              qword ptr [rsp + 1176], rax
.Lx699_7:                                                                     jmp   n447_var_α
.Lx699_0:               mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n459_var_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_var_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              r11, 259
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n449_coerce_numeric_α
.Lx702_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n449_coerce_numeric_α:  mov              r11, 260
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx704_1
                        cmp              al, 3;                               jne   .Lx704_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Lx704_0
.Lx704_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n450_binop_α
.Lx704_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 1296]
                        lea              rdx, [rsp + 1264]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n450_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n450_binop_α:           mov              r11, 261
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n459_var_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n451_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n451_coerce_numeric_α:  mov              r11, 262
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 5;                               je    .Lx707_1
                        cmp              al, 3;                               jne   .Lx707_0
                        mov              eax, dword ptr [rsp + 1248]
                        cmp              al, 3;                               jne   .Lx707_0
.Lx707_1:               mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n452_coerce_numeric_α
.Lx707_0:               lea              rdi, [rsp + 1168]
                        lea              rsi, [rsp + 1248]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n452_coerce_numeric_α:  mov              r11, 263
                        mov              eax, dword ptr [rsp + 1248]
                        cmp              al, 5;                               je    .Lx709_1
                        cmp              al, 3;                               jne   .Lx709_0
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 3;                               jne   .Lx709_0
.Lx709_1:               mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n453_binop_α
.Lx709_0:               lea              rdi, [rsp + 1248]
                        lea              rsi, [rsp + 1168]
                        lea              rdx, [rsp + 1136]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n453_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n453_binop_α:           mov              r11, 264
                        mov              eax, dword ptr [rsp + 1152]
                        mov              ecx, dword ptr [rsp + 1136]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx710_2
                        mov              rax, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1144]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1120], 3
                        mov              qword ptr [rsp + 1128], rax;         jmp   .Lx710_7
.Lx710_2:               and              edx, 1;                              jz    .Lx710_0
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdi, qword ptr [rsp + 1144]
                        cmp              al, 5;                               je    .Lx710_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx710_4
.Lx710_3:               movq             xmm0, rsi
.Lx710_4:               cmp              cl, 5;                               je    .Lx710_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx710_6
.Lx710_5:               movq             xmm1, rdi
.Lx710_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1120], 5
                        mov              qword ptr [rsp + 1128], rax
.Lx710_7:                                                                     jmp   n454_var_α
.Lx710_0:               mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n459_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             mov              r11, 265
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n455_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n455_coerce_numeric_α:  mov              r11, 266
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              al, 5;                               je    .Lx714_1
                        cmp              al, 3;                               jne   .Lx714_0
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 3;                               jne   .Lx714_0
.Lx714_1:               mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n456_coerce_numeric_α
.Lx714_0:               lea              rdi, [rsp + 1120]
                        lea              rsi, [rsp + 4080]
                        lea              rdx, [rsp + 1104]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n456_coerce_numeric_α:  mov              r11, 267
                        mov              eax, dword ptr [rsp + 4080]
                        cmp              al, 5;                               je    .Lx716_1
                        cmp              al, 3;                               jne   .Lx716_0
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              al, 3;                               jne   .Lx716_0
.Lx716_1:               mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n457_binop_α
.Lx716_0:               lea              rdi, [rsp + 4080]
                        lea              rsi, [rsp + 1120]
                        lea              rdx, [rsp + 1088]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n457_binop_α:           mov              r11, 268
                        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n459_var_α
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n458_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n458_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n459_var_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:             mov              r11, 270
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 424], rax;          jmp   n460_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n460_field_get_α:       mov              r11, 271
                        mov              rdi, qword ptr [rip + .Lx721_0]
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n400_var_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n461_lit_integer_α
.Lx721_0:               .quad            .Lx721_0_s
.Lx721_0_s:             .string          "ncalls"
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:     mov              r11, 272
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n462_call_proc_staged_α
.Lx722_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n462_call_proc_staged_α:
                        mov              r11, 273
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 432]
                        call             pad_dcα;                             jmp   .Lx724_2
.Lx724_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx724_29
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
.Lx724_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n400_var_α
                                                                              jmp   n463_var_α
n462_call_proc_staged_β:
                        mov              r11, 273;                            jmp   n400_var_α
.Lx724_0:               .quad            .Lx724_0_s
.Lx724_0_s:             .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             mov              r11, 274
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 536], rax;          jmp   n464_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n464_field_get_α:       mov              r11, 275
                        mov              rdi, qword ptr [rip + .Lx727_0]
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n400_var_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n465_lit_integer_α
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:     mov              r11, 276
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n466_call_proc_staged_α
.Lx728_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n466_call_proc_staged_α:
                        mov              r11, 277
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 544]
                        call             pad_dcα;                             jmp   .Lx730_2
.Lx730_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx730_29
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
.Lx730_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n400_var_α
                                                                              jmp   n467_lit_string_α
n466_call_proc_staged_β:
                        mov              r11, 277;                            jmp   n400_var_α
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n468_var_α
.Lx731_0:               .quad            .Lx731_0_s
.Lx731_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             mov              r11, 279
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 648], rax;          jmp   n469_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx734_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n470_call_proc_staged_α
.Lx734_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n470_call_proc_staged_α:
                        mov              r11, 281
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 656]
                        call             pad_dcα;                             jmp   .Lx736_2
.Lx736_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx736_29
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
.Lx736_29:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n400_var_α
                                                                              jmp   n471_lit_string_α
n470_call_proc_staged_β:
                        mov              r11, 281;                            jmp   n400_var_α
.Lx736_0:               .quad            .Lx736_0_s
.Lx736_0_s:             .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n472_var_α
.Lx737_0:               .quad            .Lx737_0_s
.Lx737_0_s:             .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:             mov              r11, 283
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 776], rax;          jmp   n473_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n473_field_get_α:       mov              r11, 284
                        mov              rdi, qword ptr [rip + .Lx740_0]
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n400_var_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n474_disjunction_α
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n474_disjunction_α:     mov              r11, 285
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              dword ptr [rsp + 800], 0;            jmp   n487_var_α
n474_disjunction_as:    mov              r11, 285
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              jne   .Lx742_0
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax;          jmp   n475_call_proc_staged_α
.Lx742_0:               cmp              eax, 1;                              jne   .Lx742_1
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 792], rax;          jmp   n475_call_proc_staged_α
.Lx742_1:                                                                     jmp   n475_call_proc_staged_α
n474_disjunction_β:     mov              r11, 285
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              je    n400_var_α
                                                                              jmp   n400_var_α
n474_disjunction_af:    mov              r11, 285
                        add              dword ptr [rsp + 800], 1
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 1;                              je    n486_lit_integer_α
                                                                              jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_proc_staged_α:
                        mov              r11, 286
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 784]
                        call             pad_dcα;                             jmp   .Lx744_2
.Lx744_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx744_29
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
.Lx744_29:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n474_disjunction_β
                                                                              jmp   n476_lit_string_α
n475_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n474_disjunction_β
.Lx744_0:               .quad            .Lx744_0_s
.Lx744_0_s:             .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n477_var_α
.Lx745_0:               .quad            .Lx745_0_s
.Lx745_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             mov              r11, 288
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 984], rax;          jmp   n478_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:     mov              r11, 289
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n479_call_proc_staged_α
.Lx748_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        mov              r11, 290
                        lea              rsi, [rsp + 976]
                        lea              rdx, [rsp + 992]
                        call             pad_dcα;                             jmp   .Lx750_2
.Lx750_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx750_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
.Lx750_29:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n474_disjunction_β
                                                                              jmp   n480_lit_string_α
n479_call_proc_staged_β:
                        mov              r11, 290;                            jmp   n474_disjunction_β
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n481_lit_string_α
.Lx751_0:               .quad            .Lx751_0_s
.Lx751_0_s:             .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 2
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n482_var_α
.Lx752_0:               .quad            .Lx752_0_s
.Lx752_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:             mov              r11, 293
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n483_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n483_field_get_α:       mov              r11, 294
                        mov              rdi, qword ptr [rip + .Lx755_0]
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n474_disjunction_β
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n484_call_builtin_icon_α
.Lx755_0:               .quad            .Lx755_0_s
.Lx755_0_s:             .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_icon_α:
                        mov              r11, 295
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn757:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn757]
                        lea              rsi, [rsp + 144]
                        mov              edx, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n474_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_conjunction_α
n484_call_builtin_icon_β:
                        mov              r11, 295;                            jmp   n474_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n485_conjunction_α:     mov              r11, 296
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax;          jmp   n400_var_α
n485_conjunction_β:     mov              r11, 296;                            jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n474_disjunction_as
n486_lit_integer_β:     mov              r11, 297;                            jmp   n400_var_α
.Lx759_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             mov              r11, 298
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 856], rax;          jmp   n488_lit_integer_α
n487_var_β:             mov              r11, 298;                            jmp   n474_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:     mov              r11, 299
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n489_binop_test_α
.Lx762_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n489_binop_test_α:      mov              r11, 300
                        mov              eax, dword ptr [rsp + 4048]
                        cmp              al, 112;                             je    .Lx763_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 112;                             je    .Lx763_0
                        mov              eax, dword ptr [rsp + 4048]
                        cmp              al, 3;                               jne   .Lx763_2
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 3;                               jne   .Lx763_2
.Lx763_1:               mov              rax, qword ptr [rsp + 4056]
                        mov              rcx, qword ptr [rsp + 872]
                        cmp              rax, rcx;                            jne   n474_disjunction_af
                        mov              rcx, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rcx
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rcx;          jmp   n490_lit_integer_α
.Lx763_0:               mov              rdi, qword ptr [rsp + 4048]
                        mov              rsi, qword ptr [rsp + 4056]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              r8d, 9
                        lea              r9, [rsp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx763_1
                        cmp              eax, 1;                              je    n474_disjunction_af
                                                                              jmp   n490_lit_integer_α
.Lx763_2:               mov              rdi, qword ptr [rsp + 4048]
                        mov              rsi, qword ptr [rsp + 4056]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n474_disjunction_af
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax;          jmp   n490_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:     mov              r11, 301
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n474_disjunction_as
n490_lit_integer_β:     mov              r11, 301;                            jmp   n400_var_α
.Lx764_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n491_keyword_icon_α:    mov              r11, 302
                        mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n335_var_α
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n492_assign_α
n491_keyword_icon_β:    mov              r11, 302;                            jmp   n335_var_α
.Lx765_0:               .quad            .Lx765_0_s
.Lx765_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:          mov              r11, 303
                        mov              rax, qword ptr [rsp + 3776]
                        mov              rdx, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n334_disjunction_as
n492_assign_β:          mov              r11, 303;                            jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_α:             mov              r11, 304
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n494_unop_α
n493_var_β:             mov              r11, 304;                            jmp   n334_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n494_unop_α:            mov              r11, 305
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n495_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     mov              r11, 306
                        mov              qword ptr [rsp + 3744], 3            # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n496_binop_test_α
.Lx770_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n496_binop_test_α:      mov              r11, 307
                        mov              eax, dword ptr [rsp + 3712]
                        cmp              al, 112;                             je    .Lx771_0
                        mov              eax, dword ptr [rsp + 3744]
                        cmp              al, 112;                             je    .Lx771_0
                        mov              eax, dword ptr [rsp + 3712]
                        cmp              al, 3;                               jne   .Lx771_2
                        mov              eax, dword ptr [rsp + 3744]
                        cmp              al, 3;                               jne   .Lx771_2
.Lx771_1:               mov              rax, qword ptr [rsp + 3720]
                        mov              rcx, qword ptr [rsp + 3752]
                        cmp              rax, rcx;                            jle   n334_disjunction_af
                        mov              rcx, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3696], rcx
                        mov              rcx, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3704], rcx;         jmp   n497_disjunction_α
.Lx771_0:               mov              rdi, qword ptr [rsp + 3712]
                        mov              rsi, qword ptr [rsp + 3720]
                        mov              rdx, qword ptr [rsp + 3744]
                        mov              rcx, qword ptr [rsp + 3752]
                        mov              r8d, 7
                        lea              r9, [rsp + 3696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx771_1
                        cmp              eax, 1;                              je    n334_disjunction_af
                                                                              jmp   n497_disjunction_α
.Lx771_2:               mov              rdi, qword ptr [rsp + 3712]
                        mov              rsi, qword ptr [rsp + 3720]
                        mov              rdx, qword ptr [rsp + 3744]
                        mov              rcx, qword ptr [rsp + 3752]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n334_disjunction_af
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n497_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n497_disjunction_α:     mov              r11, 308
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              dword ptr [rsp + 3392], 0;           jmp   n506_var_ref_α
n497_disjunction_as:    mov              r11, 308
                        mov              eax, dword ptr [rsp + 3392]
                        cmp              eax, 0;                              jne   .Lx773_0
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n498_assign_α
.Lx773_0:               cmp              eax, 1;                              jne   .Lx773_1
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n498_assign_α
.Lx773_1:                                                                     jmp   n498_assign_α
n497_disjunction_β:     mov              r11, 308
                        mov              eax, dword ptr [rsp + 3392]
                        cmp              eax, 0;                              je    n497_disjunction_af
                                                                              jmp   n497_disjunction_af
n497_disjunction_af:    mov              r11, 308
                        add              dword ptr [rsp + 3392], 1
                        mov              eax, dword ptr [rsp + 3392]
                        cmp              eax, 1;                              je    n499_lit_string_α
                                                                              jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n498_assign_α:          mov              r11, 309
                        mov              rax, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n334_disjunction_as
n498_assign_β:          mov              r11, 309;                            jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:      mov              r11, 310
                        mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 19
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n500_lit_string_α
n499_lit_string_β:      mov              r11, 310;                            jmp   n497_disjunction_af
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "rung36_jcon_profsum"
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rsp + 3616], 2            # result
                        mov              dword ptr [rsp + 3620], 13
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n501_var_ref_α
.Lx776_0:               .quad            .Lx776_0_s
.Lx776_0_s:             .string          ": can't open "
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_integer_α:     mov              r11, 313
                        mov              qword ptr [rsp + 3648], 3            # result
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n503_subscript_α
.Lx779_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n503_subscript_α:       mov              r11, 314
                        mov              rdi, qword ptr [rsp + 3632]
                        mov              rsi, qword ptr [rsp + 3640]
                        mov              rdx, qword ptr [rsp + 3648]
                        mov              rcx, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n497_disjunction_af
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n504_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n504_deref_α:           mov              r11, 315
                        mov              rdi, qword ptr [rsp + 3664]
                        mov              rsi, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n497_disjunction_af
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n505_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_icon_α:
                        mov              r11, 316
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3544], rax
                        .section         .rodata
.Lrkfn783:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn783]
                        lea              rsi, [rsp + 3536]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n497_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_disjunction_as
n505_call_builtin_icon_β:
                        mov              r11, 316;                            jmp   n497_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx;         jmp   n507_lit_integer_α
n506_var_ref_β:         mov              r11, 317;                            jmp   n497_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_integer_α:     mov              r11, 318
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n508_subscript_α
.Lx786_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n508_subscript_α:       mov              r11, 319
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 3472]
                        mov              rcx, qword ptr [rsp + 3480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n497_disjunction_af
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx;         jmp   n509_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_deref_α:           mov              r11, 320
                        mov              rdi, qword ptr [rsp + 3488]
                        mov              rsi, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n497_disjunction_af
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n510_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_icon_α:
                        mov              r11, 321
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3432], rax
                        .section         .rodata
.Lrkfn790:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn790]
                        lea              rsi, [rsp + 3424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    n497_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_disjunction_as
n510_call_builtin_icon_β:
                        mov              r11, 321;                            jmp   n497_disjunction_af
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
.Lclassspec0:           .string          "method(name,ncalls,tself,tcalled,tlocal)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "lookup"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__lookup
                        .quad            lookup_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            560
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "accumulate"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__accumulate
                        .quad            accumulate_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2032
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fixname"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__fixname
                        .quad            fixname_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            672
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pad"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__pad
                        .quad            pad_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
