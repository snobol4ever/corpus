                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__roman:
                        sub              rsp, 1264
                        mov              rdi, rsp
                        add              rdi, 1136
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
roman_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n32_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Lx49_0
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1_disjunction_α
.Lx49_0:                                                                      jmp   n1_disjunction_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 704];          jmp   n1_disjunction_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704];          jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 2
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n28_var_α
n1_disjunction_as:      mov              r11, 2
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx51_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax;          jmp   n2_lit_string_α
.Lx51_0:                cmp              eax, 1;                              jne   .Lx51_1
                                                                              jmp   n2_lit_string_α
.Lx51_1:                                                                      jmp   n2_lit_string_α
n1_disjunction_β:       mov              r11, 2
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_af
n1_disjunction_af:      mov              r11, 2
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    roman_ω
                                                                              jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 0
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n3_assign_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n5_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n5_iterate_α:           mov              r11, 6
                        mov              qword ptr [rsp + 208], 0
.Lx57_0:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              rax, 104;                            je    n22_disjunction_α
                                                                              jmp   n6_assign_α
n5_iterate_β:           mov              r11, 6
                        inc              qword ptr [rsp + 208];               jmp   .Lx57_0
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n7_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n7_bound_α:             mov              r11, 8
                        mov              qword ptr [rsp + 240], rsp;          jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 392], rax;          jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 7
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n10_lit_string_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 7
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n11_call_builtin_icon_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn66:               .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rsp + 320]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n21_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_var_ref_α
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # roman__STATIC__equiv
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 488], rax;          jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n15_coerce_numeric_α
.Lx71_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:   mov              r11, 16
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              al, 5;                               je    .Lx73_1
                        cmp              al, 3;                               jne   .Lx73_0
                        mov              eax, dword ptr [rsp + 496]
                        cmp              al, 3;                               jne   .Lx73_0
.Lx73_1:                mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 472], rax;          jmp   n16_binop_α
.Lx73_0:                lea              rdi, [rsp + 1152]
                        lea              rsi, [rsp + 496]
                        lea              rdx, [rsp + 464]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              r11, 17
                        mov              eax, dword ptr [rsp + 464]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx74_2
                        mov              rax, qword ptr [rsp + 472]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax;          jmp   .Lx74_7
.Lx74_2:                and              edx, 1;                              jz    .Lx74_0
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx74_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx74_4
.Lx74_3:                movq             xmm0, rsi
.Lx74_4:                cmp              cl, 5;                               je    .Lx74_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx74_6
.Lx74_5:                movq             xmm1, rdi
.Lx74_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 448], 5
                        mov              qword ptr [rsp + 456], rax
.Lx74_7:                                                                      jmp   n17_subscript_α
.Lx74_0:                mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n21_unmark_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n17_subscript_α:        mov              r11, 18
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_unmark_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n18_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_deref_α:            mov              r11, 19
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_unmark_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_unmark_α:           mov              r11, 22
                        mov              rsp, qword ptr [rsp + 240];          jmp   n5_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:      mov              r11, 23
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n25_lit_string_α
n22_disjunction_as:     mov              r11, 23
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx82_0
                                                                              jmp   roman_γ
.Lx82_0:                cmp              eax, 1;                              jne   .Lx82_1
                                                                              jmp   roman_γ
.Lx82_1:                                                                      jmp   roman_γ
n22_disjunction_β:      mov              r11, 23
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    roman_ω
                                                                              jmp   roman_ω
n22_disjunction_af:     mov              r11, 23
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n23_var_α
                                                                              jmp   roman_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 168], rax;          jmp   n24_return_α
n23_var_β:              mov              r11, 24;                             jmp   roman_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_return_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   roman_γ
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n26_var_α
n25_lit_string_β:       mov              r11, 26;                             jmp   n22_disjunction_af
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 152], rax;          jmp   n27_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_gen_α: mov              r11, 28
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 112], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx89_60:               .section         .rodata
.Lbynamegenfn28:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn28]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        lea              rcx, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n22_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   roman_ω
n27_call_builtin_gen_β: mov              r11, 28;                             jmp   .Lx89_60
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 664], rax;          jmp   n29_call_builtin_icon_α
n28_var_β:              mov              r11, 29;                             jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn93:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n1_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_lit_integer_α
n29_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n31_binop_test_α
.Lx94_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:       mov              r11, 32
                        mov              eax, dword ptr [rsp + 608]
                        cmp              al, 112;                             je    .Lx95_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              al, 112;                             je    .Lx95_0
                        mov              eax, dword ptr [rsp + 608]
                        cmp              al, 3;                               jne   .Lx95_2
                        mov              eax, dword ptr [rsp + 672]
                        cmp              al, 3;                               jne   .Lx95_2
.Lx95_1:                mov              rax, qword ptr [rsp + 616]
                        mov              rcx, qword ptr [rsp + 680]
                        cmp              rax, rcx;                            jle   n1_disjunction_af
                        mov              rcx, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 592], rcx
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 600], rcx;          jmp   n1_disjunction_as
.Lx95_0:                mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              r8d, 7
                        lea              r9, [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx95_1
                        cmp              eax, 1;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_as
.Lx95_2:                mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1_disjunction_af
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1_disjunction_as
n31_binop_test_β:       mov              r11, 32;                             jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # roman__INITFLAG__0
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n33_nulltest_var_α
n32_var_ref_β:          mov              r11, 33;                             jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_nulltest_var_α:     mov              r11, 34
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
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
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n35_assign_var_α
.Lx99_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_var_α:       mov              r11, 36
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 0
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n37_lit_string_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n38_lit_string_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 2
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n39_lit_string_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "II"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 3
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n40_lit_string_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "III"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 2
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n41_lit_string_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "IV"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n42_lit_string_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "V"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n43_lit_string_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "VI"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 3
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n44_lit_string_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "VII"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 4
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n45_lit_string_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "VIII"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 2
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n46_make_list_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "IX"
#-----------------------------------------------------------------------------------------------------------------------
n46_make_list_α:        mov              r11, 47
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 752]
                        mov              esi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [r9 + 0], rax              # roman__STATIC__equiv
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n0_disjunction_as
n47_assign_β:           mov              r11, 48;                             jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
roman_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
roman_β:
                                                                              jmp   roman_ω
#-----------------------------------------------------------------------------------------------------------------------
roman_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1264;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
roman_ω:
                        add              rsp, 1264;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
roman_dcα:
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
                        lea              rcx, [rip + .Lx114_3]
                        push             rcx
                        lea              rcx, [rip + .Lx114_2]
                        push             rcx;                                 jmp   FN__roman
.Lx114_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx114_3:               add              rsp, 24
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "roman__STATIC__equiv"
.Lgvan1:                .string          "roman__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 288
                        mov              rdi, rsp
                        add              rdi, 208
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              r11, 49
                        .section         .rodata
.Lrkfn123:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 32]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_assign_α
n115_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 50
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n117_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:     mov              r11, 51
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n120_var_α
n117_disjunction_as:    mov              r11, 51
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx126_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n118_call_builtin_icon_α
.Lx126_0:               cmp              eax, 1;                              jne   .Lx126_1
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax;          jmp   n118_call_builtin_icon_α
.Lx126_1:                                                                     jmp   n118_call_builtin_icon_α
n117_disjunction_β:     mov              r11, 51
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n117_disjunction_af
                                                                              jmp   n117_disjunction_af
n117_disjunction_af:    mov              r11, 51
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n119_lit_string_α
                                                                              jmp   n115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n117_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_call_builtin_icon_α
n118_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n117_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 14
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n117_disjunction_as
n119_lit_string_β:      mov              r11, 53;                             jmp   n117_disjunction_af
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "cannot convert"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             mov              r11, 54
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax;          jmp   n121_call_proc_staged_α
n120_var_β:             mov              r11, 54;                             jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              r11, 55
                        lea              rsi, [rsp + 176]
                        call             roman_dcα;                           jmp   .Lx133_2
.Lx133_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx133_29
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
.Lx133_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n117_disjunction_af
                                                                              jmp   n117_disjunction_as
n121_call_proc_staged_β:
                        mov              r11, 55;                             jmp   n117_disjunction_af
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "roman"
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
.Lstartup_pname0:       .string          "roman"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__roman
                        .quad            roman_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1168
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
