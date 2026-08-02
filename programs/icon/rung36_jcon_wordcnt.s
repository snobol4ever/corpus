                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wordcount_α
proc_wordcount_α:
proc_wordcount_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0
                                                                                        jmp   n1_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        jne   .Lx59_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n9_lit_integer_α
.Lx59_0:
                                                                                        jmp   n9_lit_integer_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 1088]
                                                                                        jmp   n9_lit_integer_α
n0_disjunction_af:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # wordcount__INITFLAG__0
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n2_nulltest_var_α
n1_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 1168]                    # d
                        mov              rsi, qword ptr [rbp + 1176]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n4_assign_var_α
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # var
                        mov              rsi, qword ptr [rbp + 1192]                    # var
                        mov              rdx, qword ptr [rbp + 1216]                    # val
                        mov              rcx, qword ptr [rbp + 1224]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n6_lit_charset_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_charset_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], -1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n7_binop_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n9_lit_integer_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [1879052288], rax                    # wordcount__STATIC__letters
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n0_disjunction_as
n8_assign_β:
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx69_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn71:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]                          # fn
                        lea              rsi, [rbp + 1024]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n12_call_builtin_icon_α
                                                                                        jmp   n11_assign_α
n10_call_builtin_icon_β:
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn74:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]                          # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx73_240
                        add              rsp, 1152
                                                                                        jmp   n29_var_α
.Lx73_240:
                                                                                        jmp   n13_assign_α
n12_call_builtin_icon_β:
                        add              rsp, 1152
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n15_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 992]                     # lo
                        mov              rsi, qword ptr [rbp + 1000]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052288]                    # wordcount__STATIC__letters
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 816], rax                     # result
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n17_scan_upto_α
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_upto_α:
                        mov              qword ptr [rbp + 800], r14
.Lx82_0:
                        mov              rax, qword ptr [rbp + 800]
                        cmp              rax, r15
                                                                                        jl    .Lx82_240
                        add              rsp, 1152
                                                                                        jmp   n28_scan_α
.Lx82_240:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 824]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx82_1
                        mov              qword ptr [rbp + 784], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n18_scan_tab_α
.Lx82_1:
                        inc              qword ptr [rbp + 800]
                                                                                        jmp   .Lx82_0
n17_scan_upto_β:
                        inc              qword ptr [rbp + 800]
                                                                                        jmp   .Lx82_0
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 792]
                        cmp              rax, 1
                                                                                        jge   .Lx84_0
                        add              rax, r15
                        add              rax, 1
.Lx84_0:
                        cmp              rax, 1
                                                                                        jge   .Lx84_239
                        add              rsp, 16
                                                                                        jmp   n17_scan_upto_β
.Lx84_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx84_240
                        add              rsp, 16
                                                                                        jmp   n17_scan_upto_β
.Lx84_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n19_var_ref_α
n18_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n17_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052288]                    # wordcount__STATIC__letters
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 896], rax                     # result
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n21_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_many_α:
                        mov              eax, r14d
.Lx89_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx89_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 904]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx89_1
                        add              eax, 1
                                                                                        jmp   .Lx89_0
.Lx89_1:
                        cmp              eax, r14d
                                                                                        je    n16_var_α
                        mov              qword ptr [rbp + 880], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 888], rcx
                                                                                        jmp   n22_scan_tab_α
n21_scan_many_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 888]
                        cmp              rax, 1
                                                                                        jge   .Lx91_0
                        add              rax, r15
                        add              rax, 1
.Lx91_0:
                        cmp              rax, 1
                                                                                        jge   .Lx91_239
                        add              rsp, 16
                                                                                        jmp   n16_var_α
.Lx91_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx91_240
                        add              rsp, 16
                                                                                        jmp   n16_var_α
.Lx91_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n23_subscript_α
n22_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:
                        mov              rdi, qword ptr [rbp + 832]                     # base
                        mov              rsi, qword ptr [rbp + 840]                     # base
                        mov              rdx, qword ptr [rbp + 848]                     # idx
                        mov              rcx, qword ptr [rbp + 856]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n24_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:
                        mov              rdi, qword ptr [rbp + 912]                     # d
                        mov              rsi, qword ptr [rbp + 920]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n26_binop_α
.Lx94_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx95_0
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n27_assign_var_α
.Lx95_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n27_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:
                        mov              rdi, qword ptr [rbp + 912]                     # var
                        mov              rsi, qword ptr [rbp + 920]                     # var
                        mov              rdx, qword ptr [rbp + 944]                     # val
                        mov              rcx, qword ptr [rbp + 952]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_scan_α:
                        lea              rdi, [rbp + 704]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 704]
                        mov              r14, qword ptr [rbp + 712]
                        mov              r15, qword ptr [rbp + 720]
                                                                                        jmp   n12_call_builtin_icon_α
n28_scan_β:
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx101_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn103:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n33_lit_integer_α
                                                                                        jmp   n32_assign_α
n31_call_builtin_icon_β:
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n34_var_α
.Lx105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n35_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n35_unop_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # lo
                        mov              rsi, qword ptr [rbp + 1256]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n37_coerce_numeric_α
.Lx109_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 5
                                                                                        je    .Lx111_1
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
.Lx111_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n38_binop_α
.Lx111_0:
                        lea              rdi, [rbp + 128]                               # self
                        lea              rsi, [rbp + 160]                               # other
                        lea              rdx, [rbp + 112]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rbp + 120]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n39_lit_integer_α
.Lx112_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_wordcount_ω
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n40_to_by_α
.Lx113_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n40_to_by_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx115_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 184]
                        cmp              rdx, 0
                                                                                        jl    .Lx115_1
                        cmp              rax, rcx
                                                                                        jg    proc_wordcount_ω
                                                                                        jmp   .Lx115_2
.Lx115_1:
                        cmp              rax, rcx
                                                                                        jl    proc_wordcount_ω
.Lx115_2:
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n41_assign_α
n40_to_by_β:
                        mov              rdx, qword ptr [rbp + 184]
                        mov              rax, qword ptr [rbp + 64]
                        add              rax, rdx
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   .Lx115_0
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n42_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n42_bound_α:
                        mov              qword ptr [rbp + 192], rsp
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n45_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]                     # base
                        mov              rsi, qword ptr [rbp + 376]                     # base
                        mov              rdx, qword ptr [rbp + 384]                     # idx
                        mov              rcx, qword ptr [rbp + 392]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n46_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:
                        mov              rdi, qword ptr [rbp + 400]                     # d
                        mov              rsi, qword ptr [rbp + 408]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn128:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]                         # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                                                                                        jmp   n49_var_ref_α
n48_call_builtin_icon_β:
                                                                                        jmp   n57_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n52_coerce_numeric_α
.Lx133_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 5
                                                                                        je    .Lx135_1
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
.Lx135_1:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n53_binop_α
.Lx135_0:
                        lea              rdi, [rbp + 1232]                              # self
                        lea              rsi, [rbp + 512]                               # other
                        lea              rdx, [rbp + 480]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n53_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx136_0
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n54_subscript_α
.Lx136_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]                     # base
                        mov              rsi, qword ptr [rbp + 456]                     # base
                        mov              rdx, qword ptr [rbp + 464]                     # idx
                        mov              rcx, qword ptr [rbp + 472]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n55_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:
                        mov              rdi, qword ptr [rbp + 528]                     # d
                        mov              rsi, qword ptr [rbp + 536]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n56_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn140:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n57_unmark_α
                                                                                        jmp   n57_unmark_α
n56_call_builtin_icon_β:
                                                                                        jmp   n57_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unmark_α:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n40_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
proc_wordcount_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wordcount_β:
                                                                                        jmp   proc_wordcount_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wordcount_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wordcount_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wordcount_dcα:
                        pop              r11
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1312], r11
                        lea              rax, [rip + .Lx143_2]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rax, [rip + .Lx143_3]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1232                                      # suffix_off
                        mov              edx, 1312                                      # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wordcount_α_body
.Lx143_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1344
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx143_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1344
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "wordcount"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wordcount_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wordcount_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "wordcount__STATIC__letters"
.Lgvan1:                .string          "wordcount__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
n144_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n145_call_proc_staged_α
.Lx146_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        call             proc_wordcount_dcα
                                                                                        jmp   .Lx148_2
.Lx148_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx148_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx148_240:
                        add              rsp, 16
                                                                                        jmp   main_ω
n145_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "wordcount"
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
