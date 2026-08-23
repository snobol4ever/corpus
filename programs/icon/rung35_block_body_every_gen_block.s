                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rcx
                        mov              qword ptr [rsp + 1088], rdx
                        mov              rdi, rsp
                        add              rdi, 1008
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1_lit_integer_α
.Lx46_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n2_lit_integer_α
.Lx47_0:                .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n3_make_list_α
.Lx48_0:                .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n3_make_list_α:         mov              r11, 4
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              r11, 6
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 696], rax;          jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:           mov              r11, 7
                        mov              qword ptr [rsp + 672], 0
.Lx55_0:                mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              rax, 104;                            je    n18_lit_string_α
                                                                              jmp   n7_assign_α
n6_iterate_β:           mov              r11, 7
                        inc              qword ptr [rsp + 672];               jmp   .Lx55_0
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n8_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n8_bound_α:             mov              r11, 9
                        mov              qword ptr [rsp + 704], rsp;          jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 872], rax;          jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n11_coerce_numeric_α
.Lx61_0:                .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   mov              r11, 12
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 5;                               je    .Lx63_1
                        cmp              al, 3;                               jne   .Lx63_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 3;                               jne   .Lx63_0
.Lx63_1:                mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 856], rax;          jmp   n12_binop_α
.Lx63_0:                lea              rdi, [rsp + 1008]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 848]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            mov              r11, 13
                        mov              eax, dword ptr [rsp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx64_2
                        mov              rax, qword ptr [rsp + 856]
                        mov              rdx, 100
                        add              rax, rdx
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   .Lx64_7
.Lx64_2:                and              edx, 1;                              jz    .Lx64_0
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdi, 100
                        cmp              al, 5;                               je    .Lx64_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx64_4
.Lx64_3:                movq             xmm0, rsi
.Lx64_4:                cmp              cl, 5;                               je    .Lx64_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx64_6
.Lx64_5:                movq             xmm1, rdi
.Lx64_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 832], 5
                        mov              qword ptr [rsp + 840], rax
.Lx64_7:                                                                      jmp   n13_assign_α
.Lx64_0:                mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n14_var_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 824], rax;          jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn69:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n17_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_conjunction_α
n15_call_builtin_icon_β:
                        mov              r11, 16;                             jmp   n17_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n16_conjunction_α:      mov              r11, 17
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 760], rax;          jmp   n17_unmark_α
n16_conjunction_β:      mov              r11, 17;                             jmp   n17_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_unmark_α:           mov              r11, 18
                        mov              rsp, qword ptr [rsp + 704];          jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n19_call_builtin_icon_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn75:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n20_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_var_α
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 376], rax;          jmp   n21_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n21_iterate_α:          mov              r11, 22
                        mov              qword ptr [rsp + 352], 0
.Lx79_0:                mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              rax, 104;                            je    n32_lit_string_α
                                                                              jmp   n22_assign_α
n21_iterate_β:          mov              r11, 22
                        inc              qword ptr [rsp + 352];               jmp   .Lx79_0
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n23_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n23_bound_α:            mov              r11, 24
                        mov              qword ptr [rsp + 384], rsp;          jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              r11, 25
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n29_var_α
n24_disjunction_as:     mov              r11, 25
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx84_0
                                                                              jmp   n25_var_α
.Lx84_0:                                                                      jmp   n25_var_α
n24_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rsp + 528];          jmp   n25_var_α
n24_disjunction_af:     mov              r11, 25
                        add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528];          jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 504], rax;          jmp   n26_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn88:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n28_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_conjunction_α
n26_call_builtin_icon_β:
                        mov              r11, 27;                             jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n27_conjunction_α:      mov              r11, 28
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n28_unmark_α
n27_conjunction_β:      mov              r11, 28;                             jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unmark_α:           mov              r11, 29
                        mov              rsp, qword ptr [rsp + 384];          jmp   n21_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 568], rax;          jmp   n30_lit_integer_α
n29_var_β:              mov              r11, 30;                             jmp   n24_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n31_binop_test_α
.Lx94_0:                .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:       mov              r11, 32
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 112;                             je    .Lx95_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 112;                             je    .Lx95_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 3;                               jne   .Lx95_2
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lx95_2
.Lx95_1:                mov              rax, qword ptr [rsp + 1016]
                        mov              rcx, qword ptr [rsp + 584]
                        cmp              rax, rcx;                            jne   n24_disjunction_af
                        mov              rcx, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rcx
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rcx;          jmp   n32_lit_string_α
.Lx95_0:                mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              r8d, 9
                        lea              r9, [rsp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx95_1
                        cmp              eax, 1;                              je    n24_disjunction_af
                                                                              jmp   n32_lit_string_α
.Lx95_2:                mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n24_disjunction_af
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax;          jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 4
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n33_call_builtin_icon_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn98:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n34_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_var_α
n33_call_builtin_icon_β:
                        mov              r11, 34;                             jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 56], rax;           jmp   n35_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n35_iterate_α:          mov              r11, 36
                        mov              qword ptr [rsp + 32], 0
.Lx102_0:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              rax, 104;                            je    main_ω
                                                                              jmp   n36_assign_α
n35_iterate_β:          mov              r11, 36
                        inc              qword ptr [rsp + 32];                jmp   .Lx102_0
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n37_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n37_bound_α:            mov              r11, 38
                        mov              qword ptr [rsp + 64], rsp;           jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n38_disjunction_α:      mov              r11, 39
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              dword ptr [rsp + 208], 0;            jmp   n42_var_α
n38_disjunction_as:     mov              r11, 39
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 0;                              jne   .Lx107_0
                                                                              jmp   n39_var_α
.Lx107_0:                                                                     jmp   n39_var_α
n38_disjunction_β:      mov              r11, 39
                        mov              eax, dword ptr [rsp + 208];          jmp   n39_var_α
n38_disjunction_af:     mov              r11, 39
                        add              dword ptr [rsp + 208], 1
                        mov              eax, dword ptr [rsp + 208];          jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 184], rax;          jmp   n40_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n45_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_conjunction_α
n40_call_builtin_icon_β:
                        mov              r11, 41;                             jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n41_conjunction_α:      mov              r11, 42
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax;          jmp   n45_unmark_α
n41_conjunction_β:      mov              r11, 42;                             jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 248], rax;          jmp   n43_lit_integer_α
n42_var_β:              mov              r11, 43;                             jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n44_binop_test_α
.Lx115_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_test_α:       mov              r11, 45
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 112;                             je    .Lx116_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 112;                             je    .Lx116_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 3;                               jne   .Lx116_2
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 3;                               jne   .Lx116_2
.Lx116_1:               mov              rax, qword ptr [rsp + 1016]
                        mov              rcx, qword ptr [rsp + 264]
                        cmp              rax, rcx;                            jne   n38_disjunction_af
                        mov              rcx, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rcx
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rcx;          jmp   n45_unmark_α
.Lx116_0:               mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              r8d, 9
                        lea              r9, [rsp + 224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx116_1
                        cmp              eax, 1;                              je    n38_disjunction_af
                                                                              jmp   n45_unmark_α
.Lx116_2:               mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n38_disjunction_af
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n45_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n45_unmark_α:           mov              r11, 46
                        mov              rsp, qword ptr [rsp + 64];           jmp   n35_iterate_β
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
