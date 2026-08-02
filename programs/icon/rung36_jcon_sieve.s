                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n38_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx44_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1_assign_α
.Lx44_0:
                        cmp              eax, 1
                                                                                        jne   .Lx44_1
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1_assign_α
.Lx44_1:
                                                                                        jmp   n1_assign_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n37_lit_integer_α
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn47:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]                          # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n4_var_α
                                                                                        jmp   n3_assign_α
n2_call_builtin_icon_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n6_var_α
.Lx51_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n7_to_α
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:
                        mov              rdi, qword ptr [rbp + 880]                     # v
                        mov              rsi, qword ptr [rbp + 888]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 3
                        mov              qword ptr [rbp + 888], rax
                        mov              rdi, qword ptr [rbp + 896]                     # v
                        mov              rsi, qword ptr [rbp + 904]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 896], 3
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 864], rax
.Lx55_0:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx
                                                                                        jle   .Lx55_240
                        add              rsp, 288
                                                                                        jmp   n9_var_α
.Lx55_240:
                        mov              qword ptr [rbp + 848], 3
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n8_call_builtin_icon_α
n7_to_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx55_0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn57:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]                          # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n7_to_β
                                                                                        jmp   n7_to_β
n8_call_builtin_icon_β:
                                                                                        jmp   n7_to_β
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n11_var_α
.Lx60_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n12_to_α
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:
                        mov              rdi, qword ptr [rbp + 464]                     # v
                        mov              rsi, qword ptr [rbp + 472]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                        mov              rdi, qword ptr [rbp + 480]                     # v
                        mov              rsi, qword ptr [rbp + 488]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 480], 3
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 448], rax
.Lx64_0:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jg    n27_var_α
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n13_assign_α
n12_to_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx64_0
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn67:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]                          # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n12_to_β
                                                                                        jmp   n15_bound_α
n14_call_builtin_icon_β:
                                                                                        jmp   n12_to_β
#-----------------------------------------------------------------------------------------------------------------------
n15_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n19_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 5
                                                                                        je    .Lx77_1
                        cmp              eax, 3
                                                                                        jne   .Lx77_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 3
                                                                                        jne   .Lx77_0
.Lx77_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n20_coerce_numeric_α
.Lx77_0:
                        lea              rdi, [rbp + 1152]                              # self
                        lea              rsi, [rbp + 1152]                              # other
                        lea              rdx, [rbp + 688]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n20_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 5
                                                                                        je    .Lx79_1
                        cmp              eax, 3
                                                                                        jne   .Lx79_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 3
                                                                                        jne   .Lx79_0
.Lx79_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n21_binop_α
.Lx79_0:
                        lea              rdi, [rbp + 1152]                              # self
                        lea              rsi, [rbp + 1152]                              # other
                        lea              rdx, [rbp + 672]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 3
                                                                                        jne   .Lx80_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 3
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, qword ptr [rbp + 680]
                        add              rax, rcx
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n22_var_α
.Lx80_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n24_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n24_to_by_α:
                        mov              rdi, qword ptr [rbp + 656]                     # v
                        mov              rsi, qword ptr [rbp + 664]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax
                        mov              rdi, qword ptr [rbp + 736]                     # v
                        mov              rsi, qword ptr [rbp + 744]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 736], 3
                        mov              qword ptr [rbp + 744], rax
                        mov              rdi, qword ptr [rbp + 752]                     # v
                        mov              rsi, qword ptr [rbp + 760]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 640], rax
.Lx86_0:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 760]
                        cmp              rdx, 0
                                                                                        jl    .Lx86_1
                        cmp              rax, rcx
                                                                                        jg    n26_unmark_α
                                                                                        jmp   .Lx86_2
.Lx86_1:
                        cmp              rax, rcx
                                                                                        jl    n26_unmark_α
.Lx86_2:
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n25_call_builtin_icon_α
n24_to_by_β:
                        mov              rdx, qword ptr [rbp + 760]
                        mov              rax, qword ptr [rbp + 640]
                        add              rax, rdx
                        mov              qword ptr [rbp + 640], rax
                                                                                        jmp   .Lx86_0
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn88:               .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]                          # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n24_to_by_β
                                                                                        jmp   n24_to_by_β
n25_call_builtin_icon_β:
                                                                                        jmp   n24_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n12_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n29_call_builtin_icon_α
.Lx93_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn95:               .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]                          # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n30_lit_string_α
                                                                                        jmp   n30_lit_string_α
n29_call_builtin_icon_β:
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n31_var_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "There are "
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n32_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_unop_α:
                        mov              rdi, qword ptr [rbp + 1120]                    # lo
                        mov              rsi, qword ptr [rbp + 1128]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 21
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n34_var_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          " primes in the first "
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 10
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          " integers."
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn105:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n36_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n0_disjunction_as
n37_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx106_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n39_lit_integer_α
n38_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n40_subscript_α
.Lx109_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # base
                        mov              rsi, qword ptr [rbp + 1048]                    # base
                        mov              rdx, qword ptr [rbp + 1056]                    # idx
                        mov              rcx, qword ptr [rbp + 1064]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]                    # d
                        mov              rsi, qword ptr [rbp + 1080]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn113:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_as
n42_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_af
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
