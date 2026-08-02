                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              dword ptr [rbp + 736], 0
                                                                                        jmp   n1_lit_string_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        jne   .Lx37_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n6_disjunction_α
.Lx37_0:
                                                                                        jmp   n6_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 736]
                                                                                        jmp   n6_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n2_lit_string_α
n1_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n3_binop_test_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              rdi, qword ptr [rbp + 832]                     # lhs
                        mov              rsi, qword ptr [rbp + 840]                     # lhs
                        mov              rdx, qword ptr [rbp + 848]                     # rhs
                        mov              rcx, qword ptr [rbp + 856]                     # rhs
                        mov              r8d, 12                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 848]                     # d
                        mov              rsi, qword ptr [rbp + 856]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "a<<b"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn43:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn43]                          # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n0_disjunction_as
n5_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   n7_lit_string_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx45_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n12_disjunction_α
.Lx45_0:
                                                                                        jmp   n12_disjunction_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 592]
                                                                                        jmp   n12_disjunction_α
n6_disjunction_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                                                                                        jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n8_lit_string_α
n7_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n9_binop_test_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:
                        mov              rdi, qword ptr [rbp + 688]                     # lhs
                        mov              rsi, qword ptr [rbp + 696]                     # lhs
                        mov              rdx, qword ptr [rbp + 704]                     # rhs
                        mov              rcx, qword ptr [rbp + 712]                     # rhs
                        mov              r8d, 14                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_disjunction_af
                        mov              rdi, qword ptr [rbp + 704]                     # d
                        mov              rsi, qword ptr [rbp + 712]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 4
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "b>>a"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn51:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]                          # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n12_disjunction_α
                                                                                        jmp   n6_disjunction_as
n11_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              dword ptr [rbp + 448], 0
                                                                                        jmp   n13_lit_string_α
n12_disjunction_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        jne   .Lx53_0
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n18_disjunction_α
.Lx53_0:
                                                                                        jmp   n18_disjunction_α
n12_disjunction_β:
                        mov              eax, dword ptr [rbp + 448]
                                                                                        jmp   n18_disjunction_α
n12_disjunction_af:
                        add              dword ptr [rbp + 448], 1
                        mov              eax, dword ptr [rbp + 448]
                                                                                        jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n14_lit_string_α
n13_lit_string_β:
                                                                                        jmp   n12_disjunction_af
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n15_binop_test_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_test_α:
                        mov              rdi, qword ptr [rbp + 544]                     # lhs
                        mov              rsi, qword ptr [rbp + 552]                     # lhs
                        mov              rdx, qword ptr [rbp + 560]                     # rhs
                        mov              rcx, qword ptr [rbp + 568]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n12_disjunction_af
                        mov              rdi, qword ptr [rbp + 560]                     # d
                        mov              rsi, qword ptr [rbp + 568]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 4
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n17_call_builtin_icon_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "a==a"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn59:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]                          # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n18_disjunction_α
                                                                                        jmp   n12_disjunction_as
n17_call_builtin_icon_β:
                                                                                        jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n19_lit_string_α
n18_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx61_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n24_disjunction_α
.Lx61_0:
                                                                                        jmp   n24_disjunction_α
n18_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n24_disjunction_α
n18_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n20_lit_string_α
n19_lit_string_β:
                                                                                        jmp   n18_disjunction_af
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n21_binop_test_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:
                        mov              rdi, qword ptr [rbp + 400]                     # lhs
                        mov              rsi, qword ptr [rbp + 408]                     # lhs
                        mov              rdx, qword ptr [rbp + 416]                     # rhs
                        mov              rcx, qword ptr [rbp + 424]                     # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n18_disjunction_af
                        mov              rdi, qword ptr [rbp + 416]                     # d
                        mov              rsi, qword ptr [rbp + 424]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n23_call_builtin_icon_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "a~==b"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn67:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]                          # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n24_disjunction_α
                                                                                        jmp   n18_disjunction_as
n23_call_builtin_icon_β:
                                                                                        jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n25_lit_string_α
n24_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx69_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n30_disjunction_α
.Lx69_0:
                                                                                        jmp   n30_disjunction_α
n24_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n30_disjunction_α
n24_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n26_lit_string_α
n25_lit_string_β:
                                                                                        jmp   n24_disjunction_af
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n27_binop_test_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_test_α:
                        mov              rdi, qword ptr [rbp + 256]                     # lhs
                        mov              rsi, qword ptr [rbp + 264]                     # lhs
                        mov              rdx, qword ptr [rbp + 272]                     # rhs
                        mov              rcx, qword ptr [rbp + 280]                     # rhs
                        mov              r8d, 13                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n24_disjunction_af
                        mov              rdi, qword ptr [rbp + 272]                     # d
                        mov              rsi, qword ptr [rbp + 280]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n29_call_builtin_icon_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "a<<=a"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn75:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]                          # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n30_disjunction_α
                                                                                        jmp   n24_disjunction_as
n29_call_builtin_icon_β:
                                                                                        jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n31_lit_string_α
n30_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx77_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx77_0:
                                                                                        jmp   main_ω
n30_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
n30_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n32_lit_string_α
n31_lit_string_β:
                                                                                        jmp   n30_disjunction_af
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n33_binop_test_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_test_α:
                        mov              rdi, qword ptr [rbp + 112]                     # lhs
                        mov              rsi, qword ptr [rbp + 120]                     # lhs
                        mov              rdx, qword ptr [rbp + 128]                     # rhs
                        mov              rcx, qword ptr [rbp + 136]                     # rhs
                        mov              r8d, 15                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n30_disjunction_af
                        mov              rdi, qword ptr [rbp + 128]                     # d
                        mov              rsi, qword ptr [rbp + 136]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 80], 2                        # result
                        mov              dword ptr [rbp + 84], 5
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n35_call_builtin_icon_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "b>>=b"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn83:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n30_disjunction_as
n35_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
