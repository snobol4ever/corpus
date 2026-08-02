                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_kw_α
proc_kw_α:
proc_kw_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n37_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        jne   .Lx47_0
                                                                                        jmp   n1_var_α
.Lx47_0:
                                                                                        jmp   n1_var_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 880]
                                                                                        jmp   n1_var_α
n0_disjunction_af:
                        add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn51:               .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]                          # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n3_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n4_call_builtin_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn54:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]                          # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx53_240
                        add              rsp, 960
                                                                                        jmp   n8_lit_string_α
.Lx53_240:
                                                                                        jmp   n5_var_α
n4_call_builtin_β:
                        add              rsp, 960
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 4
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n9_call_builtin_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn61:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]                          # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n21_var_α
                                                                                        jmp   n10_var_α
n9_call_builtin_β:
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn65:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]                          # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 8
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n13_binop_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "  [size "
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              rdi, qword ptr [rbp + 560]                     # a
                        mov              rsi, qword ptr [rbp + 568]                     # a
                        mov              rdx, qword ptr [rbp + 624]                     # b
                        mov              rcx, qword ptr [rbp + 632]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n15_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n16_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:
                        mov              rdi, qword ptr [rbp + 544]                     # a
                        mov              rsi, qword ptr [rbp + 552]                     # a
                        mov              rdx, qword ptr [rbp + 640]                     # b
                        mov              rcx, qword ptr [rbp + 648]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n18_binop_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              rdi, qword ptr [rbp + 528]                     # a
                        mov              rsi, qword ptr [rbp + 536]                     # a
                        mov              rdx, qword ptr [rbp + 672]                     # b
                        mov              rcx, qword ptr [rbp + 680]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n19_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n22_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn79:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]                          # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n23_assign_α
n22_call_builtin_icon_β:
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n24_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n27_var_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "&"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n28_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        mov              rdi, qword ptr [rbp + 240]                     # a
                        mov              rsi, qword ptr [rbp + 248]                     # a
                        mov              rdx, qword ptr [rbp + 16]                      # b
                        mov              rcx, qword ptr [rbp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n30_call_builtin_icon_α
.Lx88_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn90:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n34_var_α
                                                                                        jmp   n31_lit_string_α
n30_call_builtin_icon_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n32_var_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n33_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn95:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n34_var_α
                                                                                        jmp   n34_var_α
n33_call_builtin_icon_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [1879052288], rax                    # kw__STATIC__prev
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n36_return_α
#-----------------------------------------------------------------------------------------------------------------------
n36_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 960
                                                                                        jmp   proc_kw_γ
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [1879052288]                    # kw__STATIC__prev
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 992], rax                     # result
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n38_unop_test_α
n37_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_unop_test_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n40_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_test_α:
                        mov              rdi, qword ptr [rbp + 976]                     # lhs
                        mov              rsi, qword ptr [rbp + 984]                     # lhs
                        mov              rdx, qword ptr [rbp + 16]                      # rhs
                        mov              rcx, qword ptr [rbp + 24]                      # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 16]                      # d
                        mov              rsi, qword ptr [rbp + 24]                      # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 8
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n43_binop_test_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_test_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lhs
                        mov              rsi, qword ptr [rbp + 40]                      # lhs
                        mov              rdx, qword ptr [rbp + 944]                     # rhs
                        mov              rcx, qword ptr [rbp + 952]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 944]                     # d
                        mov              rsi, qword ptr [rbp + 952]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n44_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n45_return_α
n44_conjunction_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_kw_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_β:
                                                                                        jmp   proc_kw_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_dcα:
                        pop              r11
                        sub              rsp, 1120
                        mov              qword ptr [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1072], r11
                        lea              rax, [rip + .Lx111_2]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rax, [rip + .Lx111_3]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1024                                      # suffix_off
                        mov              edx, 1072                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_kw_α_body
.Lx111_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1104
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx111_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1104
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nmap_α
proc_nmap_α:
proc_nmap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rsp + 16], 2                        # result
                        mov              dword ptr [rsp + 20], 10
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n114_lit_string_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 10
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n115_call_builtin_icon_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "nnnnnnnnnn"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn122:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]                         # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx121_240
                        add              rsp, 48
                                                                                        jmp   proc_nmap_ω
.Lx121_240:
                                                                                        jmp   n116_return_α
n115_call_builtin_icon_β:
                        add              rsp, 48
                                                                                        jmp   proc_nmap_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_return_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   proc_nmap_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_β:
                                                                                        jmp   proc_nmap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_dcα:
                        pop              r11
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r11
                        lea              rax, [rip + .Lx124_2]
                        mov              qword ptr [rsp + 184], rax
                        lea              rax, [rip + .Lx124_3]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 160                                       # suffix_off
                        mov              edx, 176                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_nmap_α_body
.Lx124_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -208
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx124_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -208
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "kw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_kw_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_kw_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "nmap"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_nmap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_nmap_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "kw__STATIC__prev"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rbp + 9472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 9480], rax
                                                                                        jmp   n126_keyword_assign_α
.Lx137_0:
                        .quad            747
#-----------------------------------------------------------------------------------------------------------------------
n126_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 9472]                    # v
                        mov              rsi, qword ptr [rbp + 9480]                    # v
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 104
                                                                                        je    n127_lit_string_α
                        mov              qword ptr [rbp + 9456], rax
                        mov              qword ptr [rbp + 9464], rdx
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 9360], 2                      # result
                        mov              dword ptr [rbp + 9364], 9
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 9368], rax
                                                                                        jmp   n128_disjunction_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "allocated"
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:
                        mov              qword ptr [rbp + 9376], 0
                        mov              qword ptr [rbp + 9384], 0
                        mov              dword ptr [rbp + 9392], 0
                                                                                        jmp   n131_keyword_icon_gen_α
n128_disjunction_as:
                        mov              eax, dword ptr [rbp + 9392]
                        cmp              eax, 0
                                                                                        jne   .Lx141_0
                        mov              rax, qword ptr [rbp + 9408]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9416]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n129_call_proc_staged_α
.Lx141_0:
                        cmp              eax, 1
                                                                                        jne   .Lx141_1
                        mov              rax, qword ptr [rbp + 9440]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9448]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n129_call_proc_staged_α
.Lx141_1:
                                                                                        jmp   n129_call_proc_staged_α
n128_disjunction_β:
                        mov              eax, dword ptr [rbp + 9392]
                        cmp              eax, 0
                                                                                        je    n131_keyword_icon_gen_β
                                                                                        jmp   n128_disjunction_af
n128_disjunction_af:
                        add              dword ptr [rbp + 9392], 1
                        mov              eax, dword ptr [rbp + 9392]
                        cmp              eax, 1
                                                                                        je    n130_lit_string_α
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        lea              rsi, [rbp + 9360]
                        lea              rdx, [rbp + 9376]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx143_2
.Lx143_2:
                        mov              qword ptr [rbp + 9296], rax
                        mov              qword ptr [rbp + 9304], rdx
                        cmp              eax, 104
                                                                                        je    n128_disjunction_β
                                                                                        jmp   n128_disjunction_β
n129_call_proc_staged_β:
                                                                                        jmp   n128_disjunction_β
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 9440], 2                      # result
                        mov              dword ptr [rbp + 9444], 8
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 9448], rax
                                                                                        jmp   n128_disjunction_as
n130_lit_string_β:
                                                                                        jmp   n128_disjunction_af
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 9424], 0
.Lx145_1:
                        mov              rdi, qword ptr [rip + .Lx145_0]                # sval
                        mov              rsi, qword ptr [rbp + 9424]                    # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n128_disjunction_af
                        mov              qword ptr [rbp + 9408], rax
                        mov              qword ptr [rbp + 9416], rdx
                        mov              rax, qword ptr [rbp + 9424]
                        add              rax, 1
                        mov              qword ptr [rbp + 9424], rax
                                                                                        jmp   n128_disjunction_as
n131_keyword_icon_gen_β:
                                                                                        jmp   .Lx145_1
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "&allocated"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 9200], 2                      # result
                        mov              dword ptr [rbp + 9204], 5
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 9208], rax
                                                                                        jmp   n133_disjunction_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "ascii"
#-----------------------------------------------------------------------------------------------------------------------
n133_disjunction_α:
                        mov              qword ptr [rbp + 9216], 0
                        mov              qword ptr [rbp + 9224], 0
                        mov              dword ptr [rbp + 9232], 0
                                                                                        jmp   n136_keyword_icon_α
n133_disjunction_as:
                        mov              eax, dword ptr [rbp + 9232]
                        cmp              eax, 0
                                                                                        jne   .Lx148_0
                        mov              rax, qword ptr [rbp + 9248]
                        mov              qword ptr [rbp + 9216], rax
                        mov              rax, qword ptr [rbp + 9256]
                        mov              qword ptr [rbp + 9224], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx148_0:
                        cmp              eax, 1
                                                                                        jne   .Lx148_1
                        mov              rax, qword ptr [rbp + 9280]
                        mov              qword ptr [rbp + 9216], rax
                        mov              rax, qword ptr [rbp + 9288]
                        mov              qword ptr [rbp + 9224], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx148_1:
                                                                                        jmp   n134_call_proc_staged_α
n133_disjunction_β:
                        mov              eax, dword ptr [rbp + 9232]
                        cmp              eax, 0
                                                                                        je    n133_disjunction_af
                                                                                        jmp   n133_disjunction_af
n133_disjunction_af:
                        add              dword ptr [rbp + 9232], 1
                        mov              eax, dword ptr [rbp + 9232]
                        cmp              eax, 1
                                                                                        je    n135_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rbp + 9200]
                        lea              rdx, [rbp + 9216]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx150_2
.Lx150_2:
                        mov              qword ptr [rbp + 9136], rax
                        mov              qword ptr [rbp + 9144], rdx
                        cmp              eax, 104
                                                                                        je    n133_disjunction_β
                                                                                        jmp   n133_disjunction_β
n134_call_proc_staged_β:
                                                                                        jmp   n133_disjunction_β
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 9280], 2                      # result
                        mov              dword ptr [rbp + 9284], 8
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 9288], rax
                                                                                        jmp   n133_disjunction_as
n135_lit_string_β:
                                                                                        jmp   n133_disjunction_af
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n136_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx152_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n133_disjunction_af
                        mov              qword ptr [rbp + 9248], rax
                        mov              qword ptr [rbp + 9256], rdx
                                                                                        jmp   n133_disjunction_as
n136_keyword_icon_β:
                                                                                        jmp   n133_disjunction_af
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "&ascii"
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
