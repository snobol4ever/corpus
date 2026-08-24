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
                        sub              rsp, 912
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 736], 0;            jmp   n1_lit_string_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 0;                              jne   .Lx37_0
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_disjunction_α
.Lx37_0:                                                                      jmp   n6_disjunction_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 736];          jmp   n6_disjunction_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 736], 1
                        mov              eax, dword ptr [rsp + 736]
                        add              rsp, 16;                             jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n2_lit_string_α
n1_lit_string_β:        mov              r11, 2;                              jmp   n0_disjunction_af
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n3_binop_test_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:        mov              r11, 4
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n5_call_builtin_icon_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          "a<<b"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn43:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn43]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n6_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n0_disjunction_as
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 592], 0;            jmp   n7_lit_string_α
n6_disjunction_as:      mov              r11, 7
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              jne   .Lx45_0
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_disjunction_α
.Lx45_0:                                                                      jmp   n12_disjunction_α
n6_disjunction_β:       mov              r11, 7
                        mov              eax, dword ptr [rsp + 592];          jmp   n12_disjunction_α
n6_disjunction_af:      mov              r11, 7
                        add              dword ptr [rsp + 592], 1
                        mov              eax, dword ptr [rsp + 592]
                        add              rsp, 16;                             jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n8_lit_string_α
n7_lit_string_β:        mov              r11, 8;                              jmp   n6_disjunction_af
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n9_binop_test_α
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:        mov              r11, 10
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n6_disjunction_af
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 4
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n11_call_builtin_icon_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "b>>a"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn51:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n12_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_as
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 448], 0;            jmp   n13_lit_string_α
n12_disjunction_as:     mov              r11, 13
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 0;                              jne   .Lx53_0
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_disjunction_α
.Lx53_0:                                                                      jmp   n18_disjunction_α
n12_disjunction_β:      mov              r11, 13
                        mov              eax, dword ptr [rsp + 448];          jmp   n18_disjunction_α
n12_disjunction_af:     mov              r11, 13
                        add              dword ptr [rsp + 448], 1
                        mov              eax, dword ptr [rsp + 448]
                        add              rsp, 16;                             jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n14_lit_string_α
n13_lit_string_β:       mov              r11, 14;                             jmp   n12_disjunction_af
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n15_binop_test_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_test_α:       mov              r11, 16
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n12_disjunction_af
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 4
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n17_call_builtin_icon_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "a==a"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn59:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n18_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_disjunction_as
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_disjunction_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 304], 0;            jmp   n19_lit_string_α
n18_disjunction_as:     mov              r11, 19
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              jne   .Lx61_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_disjunction_α
.Lx61_0:                                                                      jmp   n24_disjunction_α
n18_disjunction_β:      mov              r11, 19
                        mov              eax, dword ptr [rsp + 304];          jmp   n24_disjunction_α
n18_disjunction_af:     mov              r11, 19
                        add              dword ptr [rsp + 304], 1
                        mov              eax, dword ptr [rsp + 304]
                        add              rsp, 16;                             jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n20_lit_string_α
n19_lit_string_β:       mov              r11, 20;                             jmp   n18_disjunction_af
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n21_binop_test_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:       mov              r11, 22
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n18_disjunction_af
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n23_call_builtin_icon_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "a~==b"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn67:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n24_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_disjunction_as
n23_call_builtin_icon_β:
                        mov              r11, 24;                             jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n25_lit_string_α
n24_disjunction_as:     mov              r11, 25
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx69_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_disjunction_α
.Lx69_0:                                                                      jmp   n30_disjunction_α
n24_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rsp + 160];          jmp   n30_disjunction_α
n24_disjunction_af:     mov              r11, 25
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        add              rsp, 16;                             jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n26_lit_string_α
n25_lit_string_β:       mov              r11, 26;                             jmp   n24_disjunction_af
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n27_binop_test_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_test_α:       mov              r11, 28
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n24_disjunction_af
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n29_call_builtin_icon_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "a<<=a"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn75:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n30_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_disjunction_as
n29_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n31_lit_string_α
n30_disjunction_as:     mov              r11, 31
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx77_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx77_0:                                                                      jmp   main_γ
n30_disjunction_β:      mov              r11, 31
                        mov              eax, dword ptr [rsp + 16];           jmp   main_ω
n30_disjunction_af:     mov              r11, 31
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n32_lit_string_α
n31_lit_string_β:       mov              r11, 32;                             jmp   n30_disjunction_af
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n33_binop_test_α
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_test_α:       mov              r11, 34
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n30_disjunction_af
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 5
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n35_call_builtin_icon_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "b>>=b"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn83:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_disjunction_as
n35_call_builtin_icon_β:
                        mov              r11, 36;                             jmp   main_ω
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
