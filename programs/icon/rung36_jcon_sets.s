                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__wset:
                        sub              rsp, 1152
                        mov              qword ptr [rsp + 1128], rcx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              rdi, rsp
                        add              rdi, 1040
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
wset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 872], rax;          jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n2_call_builtin_icon_α
.Lx39_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn41:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_lit_string_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n4_var_α
.Lx42_0:                .quad            .Lx42_0_s
.Lx42_0_s:              .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n5_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_α:              mov              r11, 6
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n7_call_builtin_icon_α
.Lx46_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn48:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 2
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n9_call_builtin_icon_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn51:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rsp + 720]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_disjunction_α
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              r11, 11
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n34_keyword_icon_α
n10_disjunction_as:     mov              r11, 11
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx53_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_0:                cmp              eax, 1;                              jne   .Lx53_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_1:                cmp              eax, 2;                              jne   .Lx53_2
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_2:                cmp              eax, 3;                              jne   .Lx53_3
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_3:                cmp              eax, 4;                              jne   .Lx53_4
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_4:                cmp              eax, 5;                              jne   .Lx53_5
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_5:                cmp              eax, 6;                              jne   .Lx53_6
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_assign_α
.Lx53_6:                                                                      jmp   n11_assign_α
n10_disjunction_β:      mov              r11, 11
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n10_disjunction_af
                        cmp              eax, 1;                              je    n33_to_β
                        cmp              eax, 2;                              je    n28_to_β
                        cmp              eax, 3;                              je    n10_disjunction_af
                        cmp              eax, 4;                              je    n23_iterate_β
                        cmp              eax, 5;                              je    n10_disjunction_af
                                                                              jmp   n10_disjunction_af
n10_disjunction_af:     mov              r11, 11
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n31_lit_integer_α
                        cmp              eax, 2;                              je    n25_lit_real_α
                        cmp              eax, 3;                              je    n24_lit_string_α
                        cmp              eax, 4;                              je    n22_lit_string_α
                        cmp              eax, 5;                              je    n21_lit_charset_α
                        cmp              eax, 6;                              je    n20_lit_charset_α
                                                                              jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n12_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n12_bound_α:            mov              r11, 13
                        mov              qword ptr [rsp + 432], rsp;          jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n14_var_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 680], rax;          jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 696], rax;          jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn63:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n19_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_call_builtin_icon_α
n16_call_builtin_icon_β:
                        mov              r11, 17;                             jmp   n19_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn65:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n19_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_call_builtin_icon_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n19_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn67:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n19_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_unmark_α
n18_call_builtin_icon_β:
                        mov              r11, 19;                             jmp   n19_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n19_unmark_α:           mov              r11, 20
                        mov              rsp, qword ptr [rsp + 432];          jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:      mov              r11, 21
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], -1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n10_disjunction_as
n20_lit_charset_β:      mov              r11, 21;                             jmp   n10_disjunction_af
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "cs"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_charset_α:      mov              r11, 22
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], -1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n10_disjunction_as
n21_lit_charset_β:      mov              r11, 22;                             jmp   n10_disjunction_af
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 5
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n23_iterate_α
n22_lit_string_β:       mov              r11, 23;                             jmp   n10_disjunction_af
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n23_iterate_α:          mov              r11, 24
                        mov              qword ptr [rsp + 368], 0
.Lx74_0:                mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              rax, 104;                            je    n10_disjunction_af
                                                                              jmp   n10_disjunction_as
n23_iterate_β:          mov              r11, 24
                        inc              qword ptr [rsp + 368];               jmp   .Lx74_0
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 0
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n10_disjunction_as
n24_lit_string_β:       mov              r11, 25;                             jmp   n10_disjunction_af
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_real_α:         mov              r11, 26
                        mov              qword ptr [rsp + 256], 5             # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n26_lit_integer_α
n25_lit_real_β:         mov              r11, 26;                             jmp   n10_disjunction_af
.Lx76_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n27_lit_integer_α
.Lx77_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 28
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n28_to_α
.Lx78_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n28_to_α:               mov              r11, 29
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], 3
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 288], rax
.Lx80_0:                mov              rax, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 328]
                        cmp              rax, rcx;                            jg    n10_disjunction_af
                        mov              qword ptr [rsp + 272], 3
                        mov              qword ptr [rsp + 280], rax;          jmp   n29_coerce_numeric_α
n28_to_β:               mov              r11, 29
                        inc              qword ptr [rsp + 288];               jmp   .Lx80_0
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   mov              r11, 30
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 5;                               je    .Lx82_1
                        cmp              al, 3;                               jne   .Lx82_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 3;                               jne   .Lx82_0
.Lx82_1:                mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n30_binop_α
.Lx82_0:                lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:            mov              r11, 31
                        mov              eax, dword ptr [rsp + 256]
                        mov              ecx, dword ptr [rsp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx83_2
                        mov              rax, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 248]
                        add              rax, rdx
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax;          jmp   .Lx83_7
.Lx83_2:                and              edx, 1;                              jz    .Lx83_0
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdi, qword ptr [rsp + 248]
                        cmp              al, 5;                               je    .Lx83_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx83_4
.Lx83_3:                movq             xmm0, rsi
.Lx83_4:                cmp              cl, 5;                               je    .Lx83_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx83_6
.Lx83_5:                movq             xmm1, rdi
.Lx83_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 224], 5
                        mov              qword ptr [rsp + 232], rax
.Lx83_7:                                                                      jmp   n10_disjunction_as
.Lx83_0:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n10_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_disjunction_as
n30_binop_β:            mov              r11, 31;                             jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n32_lit_integer_α
n31_lit_integer_β:      mov              r11, 32;                             jmp   n10_disjunction_af
.Lx84_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n33_to_α
.Lx85_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n33_to_α:               mov              r11, 34
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 176], rax
.Lx87_0:                mov              rax, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              rax, rcx;                            jg    n10_disjunction_af
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax;          jmp   n10_disjunction_as
n33_to_β:               mov              r11, 34
                        inc              qword ptr [rsp + 176];               jmp   .Lx87_0
#-----------------------------------------------------------------------------------------------------------------------
n34_keyword_icon_α:     mov              r11, 35
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0;            jmp   n10_disjunction_as
n34_keyword_icon_β:     mov              r11, 35;                             jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              r11, 36
                        .section         .rodata
.Lrkfn90:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rsp + 64]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n36_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_return_α
n35_call_builtin_icon_β:
                        mov              r11, 36;                             jmp   n36_return_α
#-----------------------------------------------------------------------------------------------------------------------
n36_return_α:           mov              r11, 37
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   wset_γ
#-----------------------------------------------------------------------------------------------------------------------
wset_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wset_β:
                                                                              jmp   wset_ω
#-----------------------------------------------------------------------------------------------------------------------
wset_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1128]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wset_ω:
                        mov              rcx, qword ptr [rsp + 1136]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wset_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx92_2]
                        lea              rdx, [rip + .Lx92_3];                jmp   FN__wset
.Lx92_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx92_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
                        sub              rsp, 7776
                        mov              qword ptr [rsp + 7752], rcx
                        mov              qword ptr [rsp + 7760], rdx
                        mov              rdi, rsp
                        add              rdi, 7632
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 7568], 2            # result
                        mov              dword ptr [rsp + 7572], 5
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 7576], rax;         jmp   n94_call_builtin_icon_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "empty"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              r11, 39
                        .section         .rodata
.Lrkfn334:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rsp + 7616]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx
                        cmp              al, 104;                             je    n97_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_assign_α
n94_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 7600]
                        mov              rdx, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        mov              qword ptr [rsp + 7584], rax
                        mov              qword ptr [rsp + 7592], rdx;         jmp   n96_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_proc_staged_α: mov              r11, 41
                        lea              rsi, [rsp + 7568]
                        lea              rdx, [rsp + 7584]
                        call             wset_dcα;                            jmp   .Lx337_2
.Lx337_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx337_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7504]
                        mov              rdx, qword ptr [rsp + 7512]
.Lx337_29:              mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx
                        cmp              al, 104;                             je    n97_var_α
                                                                              jmp   n97_var_α
n96_call_proc_staged_β: mov              r11, 41;                             jmp   n97_var_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7488], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7496], rax;         jmp   n98_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 7488]
                        mov              qword ptr [rsp + 7456], rax
                        mov              rax, qword ptr [rsp + 7496]
                        mov              qword ptr [rsp + 7464], rax
                        .section         .rodata
.Lrkfn341:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]
                        lea              rsi, [rsp + 7456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7440], rax
                        mov              qword ptr [rsp + 7448], rdx
                        cmp              al, 104;                             je    n100_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_call_builtin_icon_α
n98_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 7440]
                        mov              qword ptr [rsp + 7408], rax
                        mov              rax, qword ptr [rsp + 7448]
                        mov              qword ptr [rsp + 7416], rax
                        .section         .rodata
.Lrkfn343:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rsp + 7408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx
                        cmp              al, 104;                             je    n100_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_var_ref_α
n99_call_builtin_icon_β:
                        mov              r11, 44;                             jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7648]
                        mov              qword ptr [rsp + 7360], rax
                        mov              qword ptr [rsp + 7368], rdx;         jmp   n101_random_α
#-----------------------------------------------------------------------------------------------------------------------
n101_random_α:          mov              r11, 46
                        mov              rdi, qword ptr [rsp + 7360]
                        mov              rsi, qword ptr [rsp + 7368]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n105_var_α
                        mov              qword ptr [rsp + 7344], rax
                        mov              qword ptr [rsp + 7352], rdx;         jmp   n102_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_deref_α:           mov              r11, 47
                        mov              rdi, qword ptr [rsp + 7344]
                        mov              rsi, qword ptr [rsp + 7352]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n105_var_α
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n103_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 7376]
                        mov              qword ptr [rsp + 7312], rax
                        mov              rax, qword ptr [rsp + 7384]
                        mov              qword ptr [rsp + 7320], rax
                        .section         .rodata
.Lrkfn349:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]
                        lea              rsi, [rsp + 7312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n105_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_call_builtin_icon_α
n103_call_builtin_icon_β:
                        mov              r11, 48;                             jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 7296]
                        mov              qword ptr [rsp + 7264], rax
                        mov              rax, qword ptr [rsp + 7304]
                        mov              qword ptr [rsp + 7272], rax
                        .section         .rodata
.Lrkfn351:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rsp + 7264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7248], rax
                        mov              qword ptr [rsp + 7256], rdx
                        cmp              al, 104;                             je    n105_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_var_α
n104_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 50
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7232], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 7232]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7240]
                        mov              qword ptr [rsp + 7208], rax
                        .section         .rodata
.Lrkfn355:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 7200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7184], rax
                        mov              qword ptr [rsp + 7192], rdx
                        cmp              al, 104;                             je    n109_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_call_builtin_icon_α
n106_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 7184]
                        mov              qword ptr [rsp + 7152], rax
                        mov              rax, qword ptr [rsp + 7192]
                        mov              qword ptr [rsp + 7160], rax
                        .section         .rodata
.Lrkfn357:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rsp + 7152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx
                        cmp              al, 104;                             je    n109_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_call_builtin_icon_α
n107_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 7136]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 7144]
                        mov              qword ptr [rsp + 7112], rax
                        .section         .rodata
.Lrkfn359:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rsp + 7104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7088], rax
                        mov              qword ptr [rsp + 7096], rdx
                        cmp              al, 104;                             je    n109_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_string_α
n108_call_builtin_icon_β:
                        mov              r11, 53;                             jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 54
                        mov              qword ptr [rsp + 7008], 2            # result
                        mov              dword ptr [rsp + 7012], 6
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 7016], rax;         jmp   n110_var_α
.Lx360_0:               .quad            .Lx360_0_s
.Lx360_0_s:             .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             mov              r11, 55
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7080], rax;         jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 7072]
                        mov              qword ptr [rsp + 7040], rax
                        mov              rax, qword ptr [rsp + 7080]
                        mov              qword ptr [rsp + 7048], rax
                        .section         .rodata
.Lrkfn364:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rsp + 7040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx
                        cmp              al, 104;                             je    n113_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_call_proc_staged_α
n111_call_builtin_icon_β:
                        mov              r11, 56;                             jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        mov              r11, 57
                        lea              rsi, [rsp + 7008]
                        lea              rdx, [rsp + 7024]
                        call             wset_dcα;                            jmp   .Lx366_2
.Lx366_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx366_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6944]
                        mov              rdx, qword ptr [rsp + 6952]
.Lx366_29:              mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        cmp              al, 104;                             je    n113_var_ref_α
                                                                              jmp   n113_var_ref_α
n112_call_proc_staged_β:
                        mov              r11, 57;                             jmp   n113_var_ref_α
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 7648]
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx;         jmp   n114_random_α
#-----------------------------------------------------------------------------------------------------------------------
n114_random_α:          mov              r11, 59
                        mov              rdi, qword ptr [rsp + 6912]
                        mov              rsi, qword ptr [rsp + 6920]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n118_var_α
                        mov              qword ptr [rsp + 6896], rax
                        mov              qword ptr [rsp + 6904], rdx;         jmp   n115_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_deref_α:           mov              r11, 60
                        mov              rdi, qword ptr [rsp + 6896]
                        mov              rsi, qword ptr [rsp + 6904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n118_var_α
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6864], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6872], rax
                        .section         .rodata
.Lrkfn372:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn372]
                        lea              rsi, [rsp + 6864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6848], rax
                        mov              qword ptr [rsp + 6856], rdx
                        cmp              al, 104;                             je    n118_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_call_builtin_icon_α
n116_call_builtin_icon_β:
                        mov              r11, 61;                             jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 6848]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6856]
                        mov              qword ptr [rsp + 6824], rax
                        .section         .rodata
.Lrkfn374:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rsp + 6816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6800], rax
                        mov              qword ptr [rsp + 6808], rdx
                        cmp              al, 104;                             je    n118_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_var_α
n117_call_builtin_icon_β:
                        mov              r11, 62;                             jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              r11, 63
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 6784], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 6792], rax;         jmp   n119_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_icon_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 6784]
                        mov              qword ptr [rsp + 6752], rax
                        mov              rax, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 6760], rax
                        .section         .rodata
.Lrkfn378:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rsp + 6752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx
                        cmp              al, 104;                             je    n122_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_call_builtin_icon_α
n119_call_builtin_icon_β:
                        mov              r11, 64;                             jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 6736]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6744]
                        mov              qword ptr [rsp + 6712], rax
                        .section         .rodata
.Lrkfn380:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rsp + 6704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              al, 104;                             je    n122_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_call_builtin_icon_α
n120_call_builtin_icon_β:
                        mov              r11, 65;                             jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 6688]
                        mov              qword ptr [rsp + 6656], rax
                        mov              rax, qword ptr [rsp + 6696]
                        mov              qword ptr [rsp + 6664], rax
                        .section         .rodata
.Lrkfn382:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rsp + 6656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx
                        cmp              al, 104;                             je    n122_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_var_α
n121_call_builtin_icon_β:
                        mov              r11, 66;                             jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 6608], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 6616], rax;         jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              r11, 68
                        mov              qword ptr [rsp + 6624], 3            # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 6632], rax;         jmp   n124_call_builtin_icon_α
.Lx385_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 6624]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6632]
                        mov              qword ptr [rsp + 6584], rax
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6560], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6568], rax
                        .section         .rodata
.Lrkfn387:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rsp + 6560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx
                        cmp              al, 104;                             je    n127_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_call_builtin_icon_α
n124_call_builtin_icon_β:
                        mov              r11, 69;                             jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 6544]
                        mov              qword ptr [rsp + 6512], rax
                        mov              rax, qword ptr [rsp + 6552]
                        mov              qword ptr [rsp + 6520], rax
                        .section         .rodata
.Lrkfn389:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn389]
                        lea              rsi, [rsp + 6512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6496], rax
                        mov              qword ptr [rsp + 6504], rdx
                        cmp              al, 104;                             je    n127_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_call_builtin_icon_α
n125_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 6496]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 6504]
                        mov              qword ptr [rsp + 6472], rax
                        .section         .rodata
.Lrkfn391:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]
                        lea              rsi, [rsp + 6464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6448], rax
                        mov              qword ptr [rsp + 6456], rdx
                        cmp              al, 104;                             je    n127_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_lit_string_α
n126_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 6368], 2            # result
                        mov              dword ptr [rsp + 6372], 6
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n128_var_α
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             mov              r11, 73
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 6432], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 6440], rax;         jmp   n129_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 6432]
                        mov              qword ptr [rsp + 6400], rax
                        mov              rax, qword ptr [rsp + 6440]
                        mov              qword ptr [rsp + 6408], rax
                        .section         .rodata
.Lrkfn396:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]
                        lea              rsi, [rsp + 6400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx
                        cmp              al, 104;                             je    n131_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_call_proc_staged_α
n129_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              r11, 75
                        lea              rsi, [rsp + 6368]
                        lea              rdx, [rsp + 6384]
                        call             wset_dcα;                            jmp   .Lx398_2
.Lx398_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx398_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6304], rax
                        mov              qword ptr [rsp + 6312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6304]
                        mov              rdx, qword ptr [rsp + 6312]
.Lx398_29:              mov              qword ptr [rsp + 6304], rax
                        mov              qword ptr [rsp + 6312], rdx
                        cmp              al, 104;                             je    n131_lit_string_α
                                                                              jmp   n131_lit_string_α
n130_call_proc_staged_β:
                        mov              r11, 75;                             jmp   n131_lit_string_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 76
                        mov              qword ptr [rsp + 6224], 2            # result
                        mov              dword ptr [rsp + 6228], 6
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 6232], rax;         jmp   n132_var_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              r11, 77
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n133_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_icon_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 6288]
                        mov              qword ptr [rsp + 6256], rax
                        mov              rax, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6264], rax
                        .section         .rodata
.Lrkfn403:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rsp + 6256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6240], rax
                        mov              qword ptr [rsp + 6248], rdx
                        cmp              al, 104;                             je    n135_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_call_proc_staged_α
n133_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n135_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              r11, 79
                        lea              rsi, [rsp + 6224]
                        lea              rdx, [rsp + 6240]
                        call             wset_dcα;                            jmp   .Lx405_2
.Lx405_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx405_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6160]
                        mov              rdx, qword ptr [rsp + 6168]
.Lx405_29:              mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx
                        cmp              al, 104;                             je    n135_lit_string_α
                                                                              jmp   n135_lit_string_α
n134_call_proc_staged_β:
                        mov              r11, 79;                             jmp   n135_lit_string_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 6080], 2            # result
                        mov              dword ptr [rsp + 6084], 6
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 6088], rax;         jmp   n136_var_α
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             mov              r11, 81
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 6144], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 6152], rax;         jmp   n137_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6112], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6120], rax
                        .section         .rodata
.Lrkfn410:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rsp + 6112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n139_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n138_call_proc_staged_α
n137_call_builtin_icon_β:
                        mov              r11, 82;                             jmp   n139_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              r11, 83
                        lea              rsi, [rsp + 6080]
                        lea              rdx, [rsp + 6096]
                        call             wset_dcα;                            jmp   .Lx412_2
.Lx412_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx412_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6016]
                        mov              rdx, qword ptr [rsp + 6024]
.Lx412_29:              mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n139_call_builtin_icon_α
                                                                              jmp   n139_call_builtin_icon_α
n138_call_proc_staged_β:
                        mov              r11, 83;                             jmp   n139_call_builtin_icon_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              r11, 84
                        .section         .rodata
.Lrkfn414:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rsp + 6000]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5984], rax
                        mov              qword ptr [rsp + 5992], rdx
                        cmp              al, 104;                             je    n140_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_lit_string_α
n139_call_builtin_icon_β:
                        mov              r11, 84;                             jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rsp + 5792], 2            # result
                        mov              dword ptr [rsp + 5796], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 5800], rax;         jmp   n141_lit_integer_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 5936], 3            # result
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 5944], rax;         jmp   n142_lit_integer_α
.Lx416_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 5952], 3            # result
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 5960], rax;         jmp   n143_lit_integer_α
.Lx417_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rsp + 5968], 3            # result
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n144_make_list_α
.Lx418_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n144_make_list_α:       mov              r11, 89
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5896], rax
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 5904], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 5912], rax
                        mov              rax, qword ptr [rsp + 5968]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 5976]
                        mov              qword ptr [rsp + 5928], rax
                        lea              rdi, [rsp + 5888]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx;         jmp   n145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_icon_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 5872]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5880]
                        mov              qword ptr [rsp + 5848], rax
                        .section         .rodata
.Lrkfn422:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rsp + 5840]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              al, 104;                             je    n148_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_assign_α
n145_call_builtin_icon_β:
                        mov              r11, 90;                             jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 5824]
                        mov              rdx, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n147_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        mov              r11, 92
                        lea              rsi, [rsp + 5792]
                        lea              rdx, [rsp + 5808]
                        call             wset_dcα;                            jmp   .Lx425_2
.Lx425_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx425_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5728]
                        mov              rdx, qword ptr [rsp + 5736]
.Lx425_29:              mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx
                        cmp              al, 104;                             je    n148_lit_string_α
                                                                              jmp   n148_lit_string_α
n147_call_proc_staged_β:
                        mov              r11, 92;                             jmp   n148_lit_string_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 5536], 2            # result
                        mov              dword ptr [rsp + 5540], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 5544], rax;         jmp   n149_lit_integer_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 5680], 3            # result
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 5688], rax;         jmp   n150_lit_integer_α
.Lx427_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 95
                        mov              qword ptr [rsp + 5696], 3            # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 5704], rax;         jmp   n151_lit_integer_α
.Lx428_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              r11, 96
                        mov              qword ptr [rsp + 5712], 3            # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n152_make_list_α
.Lx429_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n152_make_list_α:       mov              r11, 97
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5656], rax
                        mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 5664], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 5672], rax
                        lea              rdi, [rsp + 5632]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx;         jmp   n153_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 5592], rax
                        .section         .rodata
.Lrkfn433:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rsp + 5584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                        cmp              al, 104;                             je    n156_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_assign_α
n153_call_builtin_icon_β:
                        mov              r11, 98;                             jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 99
                        mov              rax, qword ptr [rsp + 5568]
                        mov              rdx, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n155_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        mov              r11, 100
                        lea              rsi, [rsp + 5536]
                        lea              rdx, [rsp + 5552]
                        call             wset_dcα;                            jmp   .Lx436_2
.Lx436_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx436_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5472]
                        mov              rdx, qword ptr [rsp + 5480]
.Lx436_29:              mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n156_lit_string_α
                                                                              jmp   n156_lit_string_α
n155_call_proc_staged_β:
                        mov              r11, 100;                            jmp   n156_lit_string_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 5408], 2            # result
                        mov              dword ptr [rsp + 5412], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n157_var_α
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "x ++ y"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 5448], rax;         jmp   n158_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n159_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n159_binop_α:           mov              r11, 104
                        mov              rdi, qword ptr [rsp + 7648]
                        mov              rsi, qword ptr [rsp + 7656]
                        mov              rdx, qword ptr [rsp + 7632]
                        mov              rcx, qword ptr [rsp + 7640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n161_lit_string_α
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              r11, 105
                        lea              rsi, [rsp + 5408]
                        lea              rdx, [rsp + 5424]
                        call             wset_dcα;                            jmp   .Lx444_2
.Lx444_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx444_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
.Lx444_29:              mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              al, 104;                             je    n161_lit_string_α
                                                                              jmp   n161_lit_string_α
n160_call_proc_staged_β:
                        mov              r11, 105;                            jmp   n161_lit_string_α
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 5280], 2            # result
                        mov              dword ptr [rsp + 5284], 6
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n162_var_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "y ++ x"
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 5320], rax;         jmp   n163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n164_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:           mov              r11, 109
                        mov              rdi, qword ptr [rsp + 7632]
                        mov              rsi, qword ptr [rsp + 7640]
                        mov              rdx, qword ptr [rsp + 7648]
                        mov              rcx, qword ptr [rsp + 7656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n166_lit_string_α
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n165_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        mov              r11, 110
                        lea              rsi, [rsp + 5280]
                        lea              rdx, [rsp + 5296]
                        call             wset_dcα;                            jmp   .Lx452_2
.Lx452_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx452_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5216]
                        mov              rdx, qword ptr [rsp + 5224]
.Lx452_29:              mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx
                        cmp              al, 104;                             je    n166_lit_string_α
                                                                              jmp   n166_lit_string_α
n165_call_proc_staged_β:
                        mov              r11, 110;                            jmp   n166_lit_string_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 5152], 2            # result
                        mov              dword ptr [rsp + 5156], 6
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 5160], rax;         jmp   n167_var_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "x -- y"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 5184], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n169_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           mov              r11, 114
                        mov              rdi, qword ptr [rsp + 7648]
                        mov              rsi, qword ptr [rsp + 7656]
                        mov              rdx, qword ptr [rsp + 7632]
                        mov              rcx, qword ptr [rsp + 7640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n171_lit_string_α
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              r11, 115
                        lea              rsi, [rsp + 5152]
                        lea              rdx, [rsp + 5168]
                        call             wset_dcα;                            jmp   .Lx460_2
.Lx460_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx460_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5088]
                        mov              rdx, qword ptr [rsp + 5096]
.Lx460_29:              mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx
                        cmp              al, 104;                             je    n171_lit_string_α
                                                                              jmp   n171_lit_string_α
n170_call_proc_staged_β:
                        mov              r11, 115;                            jmp   n171_lit_string_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 5024], 2            # result
                        mov              dword ptr [rsp + 5028], 6
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 5032], rax;         jmp   n172_var_α
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "y -- x"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 5080], rax;         jmp   n174_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           mov              r11, 119
                        mov              rdi, qword ptr [rsp + 7632]
                        mov              rsi, qword ptr [rsp + 7640]
                        mov              rdx, qword ptr [rsp + 7648]
                        mov              rcx, qword ptr [rsp + 7656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n176_lit_string_α
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              r11, 120
                        lea              rsi, [rsp + 5024]
                        lea              rdx, [rsp + 5040]
                        call             wset_dcα;                            jmp   .Lx468_2
.Lx468_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx468_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4960]
                        mov              rdx, qword ptr [rsp + 4968]
.Lx468_29:              mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx
                        cmp              al, 104;                             je    n176_lit_string_α
                                                                              jmp   n176_lit_string_α
n175_call_proc_staged_β:
                        mov              r11, 120;                            jmp   n176_lit_string_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 6
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n177_var_α
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "x ** y"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 4936], rax;         jmp   n178_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 4952], rax;         jmp   n179_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           mov              r11, 124
                        mov              rdi, qword ptr [rsp + 7648]
                        mov              rsi, qword ptr [rsp + 7656]
                        mov              rdx, qword ptr [rsp + 7632]
                        mov              rcx, qword ptr [rsp + 7640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cinter@PLT
                        cmp              al, 104;                             je    n181_lit_string_α
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_proc_staged_α:
                        mov              r11, 125
                        lea              rsi, [rsp + 4896]
                        lea              rdx, [rsp + 4912]
                        call             wset_dcα;                            jmp   .Lx476_2
.Lx476_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx476_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4832]
                        mov              rdx, qword ptr [rsp + 4840]
.Lx476_29:              mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              al, 104;                             je    n181_lit_string_α
                                                                              jmp   n181_lit_string_α
n180_call_proc_staged_β:
                        mov              r11, 125;                            jmp   n181_lit_string_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 4768], 2            # result
                        mov              dword ptr [rsp + 4772], 6
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n182_var_α
.Lx477_0:               .quad            .Lx477_0_s
.Lx477_0_s:             .string          "y ** x"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 4800], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 4808], rax;         jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n184_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           mov              r11, 129
                        mov              rdi, qword ptr [rsp + 7632]
                        mov              rsi, qword ptr [rsp + 7640]
                        mov              rdx, qword ptr [rsp + 7648]
                        mov              rcx, qword ptr [rsp + 7656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cinter@PLT
                        cmp              al, 104;                             je    n186_call_builtin_icon_α
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              r11, 130
                        lea              rsi, [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        call             wset_dcα;                            jmp   .Lx484_2
.Lx484_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx484_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4704]
                        mov              rdx, qword ptr [rsp + 4712]
.Lx484_29:              mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        cmp              al, 104;                             je    n186_call_builtin_icon_α
                                                                              jmp   n186_call_builtin_icon_α
n185_call_proc_staged_β:
                        mov              r11, 130;                            jmp   n186_call_builtin_icon_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              r11, 131
                        .section         .rodata
.Lrkfn486:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn486]
                        lea              rsi, [rsp + 4688]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4672], rax
                        mov              qword ptr [rsp + 4680], rdx
                        cmp              al, 104;                             je    n187_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_lit_string_α
n186_call_builtin_icon_β:
                        mov              r11, 131;                            jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 4560], 2            # result
                        mov              dword ptr [rsp + 4564], 5
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n188_keyword_icon_α
.Lx487_0:               .quad            .Lx487_0_s
.Lx487_0_s:             .string          "empty"
#-----------------------------------------------------------------------------------------------------------------------
n188_keyword_icon_α:    mov              r11, 133
                        mov              qword ptr [rsp + 4640], 0
                        mov              qword ptr [rsp + 4648], 0;           jmp   n189_call_builtin_icon_α
n188_keyword_icon_β:    mov              r11, 133;                            jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4616], rax
                        .section         .rodata
.Lrkfn490:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn490]
                        lea              rsi, [rsp + 4608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx
                        cmp              al, 104;                             je    n192_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_assign_α
n189_call_builtin_icon_β:
                        mov              r11, 134;                            jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 4592]
                        mov              rdx, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n191_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        mov              r11, 136
                        lea              rsi, [rsp + 4560]
                        lea              rdx, [rsp + 4576]
                        call             wset_dcα;                            jmp   .Lx493_2
.Lx493_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx493_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4496]
                        mov              rdx, qword ptr [rsp + 4504]
.Lx493_29:              mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        cmp              al, 104;                             je    n192_lit_string_α
                                                                              jmp   n192_lit_string_α
n191_call_proc_staged_β:
                        mov              r11, 136;                            jmp   n192_lit_string_α
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 4320], 2            # result
                        mov              dword ptr [rsp + 4324], 3
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n193_var_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "+ 1"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             mov              r11, 138
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rsp + 4448], 3            # result
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n195_lit_integer_α
.Lx497_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 4464], 3            # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n196_lit_integer_α
.Lx498_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rsp + 4480], 3            # result
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n197_call_builtin_icon_α
.Lx499_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 4376], rax
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4360], rax
                        .section         .rodata
.Lrkfn501:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn501]
                        lea              rsi, [rsp + 4352]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx
                        cmp              al, 104;                             je    n199_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n198_call_proc_staged_α
n197_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        mov              r11, 143
                        lea              rsi, [rsp + 4320]
                        lea              rdx, [rsp + 4336]
                        call             wset_dcα;                            jmp   .Lx503_2
.Lx503_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx503_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4256]
                        mov              rdx, qword ptr [rsp + 4264]
.Lx503_29:              mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              al, 104;                             je    n199_lit_string_α
                                                                              jmp   n199_lit_string_α
n198_call_proc_staged_β:
                        mov              r11, 143;                            jmp   n199_lit_string_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 4144], 2            # result
                        mov              dword ptr [rsp + 4148], 3
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n200_var_α
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "+ 2"
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n201_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rsp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n202_call_builtin_icon_α
.Lx507_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4184], rax
                        .section         .rodata
.Lrkfn509:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rsp + 4176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n204_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n203_call_proc_staged_α
n202_call_builtin_icon_β:
                        mov              r11, 147;                            jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_proc_staged_α:
                        mov              r11, 148
                        lea              rsi, [rsp + 4144]
                        lea              rdx, [rsp + 4160]
                        call             wset_dcα;                            jmp   .Lx511_2
.Lx511_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx511_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4080]
                        mov              rdx, qword ptr [rsp + 4088]
.Lx511_29:              mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n204_lit_string_α
                                                                              jmp   n204_lit_string_α
n203_call_proc_staged_β:
                        mov              r11, 148;                            jmp   n204_lit_string_α
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 3
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n205_var_α
.Lx512_0:               .quad            .Lx512_0_s
.Lx512_0_s:             .string          "+ c"
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 4064], 2            # result
                        mov              dword ptr [rsp + 4068], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n207_call_builtin_icon_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              r11, 152
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4024], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4008], rax
                        .section         .rodata
.Lrkfn517:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn517]
                        lea              rsi, [rsp + 4000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx
                        cmp              al, 104;                             je    n209_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n208_call_proc_staged_α
n207_call_builtin_icon_β:
                        mov              r11, 152;                            jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              r11, 153
                        lea              rsi, [rsp + 3968]
                        lea              rdx, [rsp + 3984]
                        call             wset_dcα;                            jmp   .Lx519_2
.Lx519_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx519_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3904]
                        mov              rdx, qword ptr [rsp + 3912]
.Lx519_29:              mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        cmp              al, 104;                             je    n209_lit_string_α
                                                                              jmp   n209_lit_string_α
n208_call_proc_staged_β:
                        mov              r11, 153;                            jmp   n209_lit_string_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 3
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n210_var_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "- 3"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             mov              r11, 155
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n211_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 3888], 3            # result
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n212_call_builtin_icon_α
.Lx523_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        mov              r11, 157
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3832], rax
                        .section         .rodata
.Lrkfn525:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn525]
                        lea              rsi, [rsp + 3824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                        cmp              al, 104;                             je    n214_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_call_proc_staged_α
n212_call_builtin_icon_β:
                        mov              r11, 157;                            jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        mov              r11, 158
                        lea              rsi, [rsp + 3792]
                        lea              rdx, [rsp + 3808]
                        call             wset_dcα;                            jmp   .Lx527_2
.Lx527_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx527_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3728]
                        mov              rdx, qword ptr [rsp + 3736]
.Lx527_29:              mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        cmp              al, 104;                             je    n214_lit_string_α
                                                                              jmp   n214_lit_string_α
n213_call_proc_staged_β:
                        mov              r11, 158;                            jmp   n214_lit_string_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 3584], 2            # result
                        mov              dword ptr [rsp + 3588], 3
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n215_var_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "- 1"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n216_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rsp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n217_lit_integer_α
.Lx531_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n218_call_builtin_icon_α
.Lx532_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_icon_α:
                        mov              r11, 163
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3640], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3624], rax
                        .section         .rodata
.Lrkfn534:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn534]
                        lea              rsi, [rsp + 3616]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n220_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_call_proc_staged_α
n218_call_builtin_icon_β:
                        mov              r11, 163;                            jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              r11, 164
                        lea              rsi, [rsp + 3584]
                        lea              rdx, [rsp + 3600]
                        call             wset_dcα;                            jmp   .Lx536_2
.Lx536_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx536_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3520]
                        mov              rdx, qword ptr [rsp + 3528]
.Lx536_29:              mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n220_lit_string_α
                                                                              jmp   n220_lit_string_α
n219_call_proc_staged_β:
                        mov              r11, 164;                            jmp   n220_lit_string_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 3
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n221_var_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "- 1"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             mov              r11, 166
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n222_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rsp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n223_call_builtin_icon_α
.Lx540_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_icon_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3448], rax
                        .section         .rodata
.Lrkfn542:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rsp + 3440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              al, 104;                             je    n225_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n224_call_proc_staged_α
n223_call_builtin_icon_β:
                        mov              r11, 168;                            jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_proc_staged_α:
                        mov              r11, 169
                        lea              rsi, [rsp + 3408]
                        lea              rdx, [rsp + 3424]
                        call             wset_dcα;                            jmp   .Lx544_2
.Lx544_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx544_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3344]
                        mov              rdx, qword ptr [rsp + 3352]
.Lx544_29:              mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n225_lit_string_α
                                                                              jmp   n225_lit_string_α
n224_call_proc_staged_β:
                        mov              r11, 169;                            jmp   n225_lit_string_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 3232], 2            # result
                        mov              dword ptr [rsp + 3236], 3
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n226_var_α
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "+ 2"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 171
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 3328], 3            # result
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n228_call_builtin_icon_α
.Lx548_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_icon_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3272], rax
                        .section         .rodata
.Lrkfn550:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn550]
                        lea              rsi, [rsp + 3264]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              al, 104;                             je    n230_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_call_proc_staged_α
n228_call_builtin_icon_β:
                        mov              r11, 173;                            jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_proc_staged_α:
                        mov              r11, 174
                        lea              rsi, [rsp + 3232]
                        lea              rdx, [rsp + 3248]
                        call             wset_dcα;                            jmp   .Lx552_2
.Lx552_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx552_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
.Lx552_29:              mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n230_lit_string_α
                                                                              jmp   n230_lit_string_α
n229_call_proc_staged_β:
                        mov              r11, 174;                            jmp   n230_lit_string_α
.Lx552_0:               .quad            .Lx552_0_s
.Lx552_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 3
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n231_var_α
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "+ 1"
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rsp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n233_call_builtin_icon_α
.Lx556_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        mov              r11, 178
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn558:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n235_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_call_proc_staged_α
n233_call_builtin_icon_β:
                        mov              r11, 178;                            jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_proc_staged_α:
                        mov              r11, 179
                        lea              rsi, [rsp + 3056]
                        lea              rdx, [rsp + 3072]
                        call             wset_dcα;                            jmp   .Lx560_2
.Lx560_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx560_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2992]
                        mov              rdx, qword ptr [rsp + 3000]
.Lx560_29:              mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n235_lit_string_α
                                                                              jmp   n235_lit_string_α
n234_call_proc_staged_β:
                        mov              r11, 179;                            jmp   n235_lit_string_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 5
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n236_var_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "+ 7.0"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n237_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_real_α:        mov              r11, 182
                        mov              qword ptr [rsp + 2976], 5            # result
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n238_call_builtin_icon_α
.Lx564_0:               .quad            4619567317775286272
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              r11, 183
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2920], rax
                        .section         .rodata
.Lrkfn566:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn566]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n240_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_call_proc_staged_α
n238_call_builtin_icon_β:
                        mov              r11, 183;                            jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_proc_staged_α:
                        mov              r11, 184
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        call             wset_dcα;                            jmp   .Lx568_2
.Lx568_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx568_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
.Lx568_29:              mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n240_lit_string_α
                                                                              jmp   n240_lit_string_α
n239_call_proc_staged_β:
                        mov              r11, 184;                            jmp   n240_lit_string_α
.Lx568_0:               .quad            .Lx568_0_s
.Lx568_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 5
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n241_var_α
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "+ 7.0"
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n242_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_real_α:        mov              r11, 187
                        mov              qword ptr [rsp + 2800], 5            # result
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n243_call_builtin_icon_α
.Lx572_0:               .quad            4619567317775286272
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_icon_α:
                        mov              r11, 188
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax
                        .section         .rodata
.Lrkfn574:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn574]
                        lea              rsi, [rsp + 2736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n245_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_call_proc_staged_α
n243_call_builtin_icon_β:
                        mov              r11, 188;                            jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_proc_staged_α:
                        mov              r11, 189
                        lea              rsi, [rsp + 2704]
                        lea              rdx, [rsp + 2720]
                        call             wset_dcα;                            jmp   .Lx576_2
.Lx576_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx576_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
.Lx576_29:              mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n245_lit_string_α
                                                                              jmp   n245_lit_string_α
n244_call_proc_staged_β:
                        mov              r11, 189;                            jmp   n245_lit_string_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n246_var_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "+ 'cs'"
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              r11, 191
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n247_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_charset_α:     mov              r11, 192
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n248_call_builtin_icon_α
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "cs"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_icon_α:
                        mov              r11, 193
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn582:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n250_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_call_proc_staged_α
n248_call_builtin_icon_β:
                        mov              r11, 193;                            jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_proc_staged_α:
                        mov              r11, 194
                        lea              rsi, [rsp + 2528]
                        lea              rdx, [rsp + 2544]
                        call             wset_dcα;                            jmp   .Lx584_2
.Lx584_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx584_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
.Lx584_29:              mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n250_lit_string_α
                                                                              jmp   n250_lit_string_α
n249_call_proc_staged_β:
                        mov              r11, 194;                            jmp   n250_lit_string_α
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 6
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n251_var_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "+ 'cs'"
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             mov              r11, 196
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n252_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_charset_α:     mov              r11, 197
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], -1
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n253_call_builtin_icon_α
.Lx588_0:               .quad            .Lx588_0_s
.Lx588_0_s:             .string          "cs"
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_icon_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2392], rax
                        .section         .rodata
.Lrkfn590:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn590]
                        lea              rsi, [rsp + 2384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n255_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n254_call_proc_staged_α
n253_call_builtin_icon_β:
                        mov              r11, 198;                            jmp   n255_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        mov              r11, 199
                        lea              rsi, [rsp + 2352]
                        lea              rdx, [rsp + 2368]
                        call             wset_dcα;                            jmp   .Lx592_2
.Lx592_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx592_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
.Lx592_29:              mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n255_lit_string_α
                                                                              jmp   n255_lit_string_α
n254_call_proc_staged_β:
                        mov              r11, 199;                            jmp   n255_lit_string_α
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 3
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n256_var_α
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "x ="
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n257_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        mov              r11, 202
                        lea              rsi, [rsp + 2256]
                        lea              rdx, [rsp + 2272]
                        call             wset_dcα;                            jmp   .Lx597_2
.Lx597_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx597_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
.Lx597_29:              mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n258_call_builtin_icon_α
                                                                              jmp   n258_call_builtin_icon_α
n257_call_proc_staged_β:
                        mov              r11, 202;                            jmp   n258_call_builtin_icon_α
.Lx597_0:               .quad            .Lx597_0_s
.Lx597_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        mov              r11, 203
                        .section         .rodata
.Lrkfn599:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn599]
                        lea              rsi, [rsp + 2176]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n259_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n259_lit_string_α
n258_call_builtin_icon_β:
                        mov              r11, 203;                            jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 5
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n260_lit_integer_α
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "3,a,4"
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n261_lit_string_α
.Lx601_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n262_lit_integer_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     mov              r11, 207
                        mov              qword ptr [rsp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n263_make_list_α
.Lx603_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n263_make_list_α:       mov              r11, 208
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n264_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn607:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n267_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n265_assign_α
n264_call_builtin_icon_β:
                        mov              r11, 209;                            jmp   n267_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n266_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_proc_staged_α:
                        mov              r11, 211
                        lea              rsi, [rsp + 1968]
                        lea              rdx, [rsp + 1984]
                        call             wset_dcα;                            jmp   .Lx610_2
.Lx610_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx610_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
.Lx610_29:              mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n267_lit_string_α
                                                                              jmp   n267_lit_string_α
n266_call_proc_staged_β:
                        mov              r11, 211;                            jmp   n267_lit_string_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 6
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n268_var_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "y ++ x"
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             mov              r11, 213
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             mov              r11, 214
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n270_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           mov              r11, 215
                        mov              rdi, qword ptr [rsp + 7632]
                        mov              rsi, qword ptr [rsp + 7640]
                        mov              rdx, qword ptr [rsp + 7648]
                        mov              rcx, qword ptr [rsp + 7656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n272_lit_string_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        mov              r11, 216
                        lea              rsi, [rsp + 1840]
                        lea              rdx, [rsp + 1856]
                        call             wset_dcα;                            jmp   .Lx618_2
.Lx618_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx618_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
.Lx618_29:              mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n272_lit_string_α
                                                                              jmp   n272_lit_string_α
n271_call_proc_staged_β:
                        mov              r11, 216;                            jmp   n272_lit_string_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 6
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n273_var_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "y ** x"
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             mov              r11, 219
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n275_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           mov              r11, 220
                        mov              rdi, qword ptr [rsp + 7632]
                        mov              rsi, qword ptr [rsp + 7640]
                        mov              rdx, qword ptr [rsp + 7648]
                        mov              rcx, qword ptr [rsp + 7656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cinter@PLT
                        cmp              al, 104;                             je    n277_lit_string_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n276_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_proc_staged_α:
                        mov              r11, 221
                        lea              rsi, [rsp + 1712]
                        lea              rdx, [rsp + 1728]
                        call             wset_dcα;                            jmp   .Lx626_2
.Lx626_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx626_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
.Lx626_29:              mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n277_lit_string_α
                                                                              jmp   n277_lit_string_α
n276_call_proc_staged_β:
                        mov              r11, 221;                            jmp   n277_lit_string_α
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 6
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n278_var_α
.Lx627_0:               .quad            .Lx627_0_s
.Lx627_0_s:             .string          "y -- x"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             mov              r11, 223
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n280_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           mov              r11, 225
                        mov              rdi, qword ptr [rsp + 7632]
                        mov              rsi, qword ptr [rsp + 7640]
                        mov              rdx, qword ptr [rsp + 7648]
                        mov              rcx, qword ptr [rsp + 7656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n282_lit_string_α
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n281_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_proc_staged_α:
                        mov              r11, 226
                        lea              rsi, [rsp + 1584]
                        lea              rdx, [rsp + 1600]
                        call             wset_dcα;                            jmp   .Lx634_2
.Lx634_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx634_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
.Lx634_29:              mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n282_lit_string_α
                                                                              jmp   n282_lit_string_α
n281_call_proc_staged_β:
                        mov              r11, 226;                            jmp   n282_lit_string_α
.Lx634_0:               .quad            .Lx634_0_s
.Lx634_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 6
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n283_var_α
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "x -- y"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              r11, 228
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n285_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n285_binop_α:           mov              r11, 230
                        mov              rdi, qword ptr [rsp + 7648]
                        mov              rsi, qword ptr [rsp + 7656]
                        mov              rdx, qword ptr [rsp + 7632]
                        mov              rcx, qword ptr [rsp + 7640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n287_call_builtin_icon_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n286_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        mov              r11, 231
                        lea              rsi, [rsp + 1456]
                        lea              rdx, [rsp + 1472]
                        call             wset_dcα;                            jmp   .Lx642_2
.Lx642_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx642_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
.Lx642_29:              mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n287_call_builtin_icon_α
                                                                              jmp   n287_call_builtin_icon_α
n286_call_proc_staged_β:
                        mov              r11, 231;                            jmp   n287_call_builtin_icon_α
.Lx642_0:               .quad            .Lx642_0_s
.Lx642_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_icon_α:
                        mov              r11, 232
                        .section         .rodata
.Lrkfn644:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n288_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n288_call_builtin_icon_α
n287_call_builtin_icon_β:
                        mov              r11, 232;                            jmp   n288_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              r11, 233
                        .section         .rodata
.Lrkfn646:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn646]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n293_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n289_assign_α
n288_call_builtin_icon_β:
                        mov              r11, 233;                            jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              r11, 234
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 7664], rax
                        mov              qword ptr [rsp + 7672], rdx
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n291_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n291_iterate_α:         mov              r11, 236
                        mov              qword ptr [rsp + 1328], 0
.Lx651_0:               mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              rax, 104;                            je    n293_lit_string_α
                                                                              jmp   n292_call_builtin_icon_α
n291_iterate_β:         mov              r11, 236
                        inc              qword ptr [rsp + 1328];              jmp   .Lx651_0
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_icon_α:
                        mov              r11, 237
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn653:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn653]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n291_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n291_iterate_β
n292_call_builtin_icon_β:
                        mov              r11, 237;                            jmp   n291_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 9
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n294_var_α
.Lx654_0:               .quad            .Lx654_0_s
.Lx654_0_s:             .string          "z from !y"
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              r11, 239
                        mov              rax, qword ptr [rsp + 7664]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 7672]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n295_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_proc_staged_α:
                        mov              r11, 240
                        lea              rsi, [rsp + 1168]
                        lea              rdx, [rsp + 1184]
                        call             wset_dcα;                            jmp   .Lx658_2
.Lx658_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx658_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
.Lx658_29:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n296_call_builtin_icon_α
                                                                              jmp   n296_call_builtin_icon_α
n295_call_proc_staged_β:
                        mov              r11, 240;                            jmp   n296_call_builtin_icon_α
.Lx658_0:               .quad            .Lx658_0_s
.Lx658_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_icon_α:
                        mov              r11, 241
                        .section         .rodata
.Lrkfn660:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n297_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n297_lit_integer_α
n296_call_builtin_icon_β:
                        mov              r11, 241;                            jmp   n297_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:     mov              r11, 242
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n298_lit_integer_α
.Lx661_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n299_lit_integer_α
.Lx662_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n300_lit_integer_α
.Lx663_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:     mov              r11, 245
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n301_lit_integer_α
.Lx664_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:     mov              r11, 246
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n302_lit_integer_α
.Lx665_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     mov              r11, 247
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n303_lit_integer_α
.Lx666_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     mov              r11, 248
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n304_lit_integer_α
.Lx667_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:     mov              r11, 249
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n305_lit_integer_α
.Lx668_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     mov              r11, 250
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n306_lit_integer_α
.Lx669_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:     mov              r11, 251
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n307_lit_integer_α
.Lx670_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              r11, 252
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n308_make_list_α
.Lx671_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n308_make_list_α:       mov              r11, 253
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n309_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_icon_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn675:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn675]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n311_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n310_assign_α
n309_call_builtin_icon_β:
                        mov              r11, 254;                            jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:          mov              r11, 255
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx;         jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 648], rax;          jmp   n312_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        mov              r11, 257
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn680:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]
                        lea              rsi, [rsp + 608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n314_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n313_assign_α
n312_call_builtin_icon_β:
                        mov              r11, 257;                            jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             mov              r11, 259
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 552], rax;          jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:     mov              r11, 260
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n316_call_builtin_icon_α
.Lx684_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_icon_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn686:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn686]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n317_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n317_var_α
n316_call_builtin_icon_β:
                        mov              r11, 261;                            jmp   n317_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             mov              r11, 262
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 456], rax;          jmp   n318_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n319_call_builtin_icon_α
.Lx689_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_icon_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn691:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn691]
                        lea              rsi, [rsp + 400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n320_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_var_α
n319_call_builtin_icon_β:
                        mov              r11, 264;                            jmp   n320_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             mov              r11, 265
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 360], rax;          jmp   n321_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n322_call_builtin_icon_α
.Lx694_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_icon_α:
                        mov              r11, 267
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn696:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn696]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n323_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n323_var_α
n322_call_builtin_icon_β:
                        mov              r11, 267;                            jmp   n323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 264], rax;          jmp   n324_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n325_call_builtin_icon_α
.Lx699_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_icon_α:
                        mov              r11, 270
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn701:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn701]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n326_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n326_lit_string_α
n325_call_builtin_icon_β:
                        mov              r11, 270;                            jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n327_var_α
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 184], rax;          jmp   n328_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_proc_staged_α:
                        mov              r11, 273
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        call             wset_dcα;                            jmp   .Lx706_2
.Lx706_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx706_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx706_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n329_lit_string_α
                                                                              jmp   n329_lit_string_α
n328_call_proc_staged_β:
                        mov              r11, 273;                            jmp   n329_lit_string_α
.Lx706_0:               .quad            .Lx706_0_s
.Lx706_0_s:             .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n330_var_α
.Lx707_0:               .quad            .Lx707_0_s
.Lx707_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 88], rax;           jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        mov              r11, 276
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 80]
                        call             wset_dcα;                            jmp   .Lx711_2
.Lx711_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx711_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx711_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n331_call_proc_staged_β:
                        mov              r11, 276;                            jmp   main_ω
.Lx711_0:               .quad            .Lx711_0_s
.Lx711_0_s:             .string          "wset"
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
.Lstartup_pname0:       .string          "wset"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__wset
                        .quad            wset_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1056
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
