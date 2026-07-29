                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 1064
                        mov              rdi, rsp
                        mov              ecx, 1064
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1056], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1_lit_integer_α
.Lx46_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n2_lit_integer_α
.Lx47_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n3_make_list_α
.Lx48_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n3_make_list_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:
                        mov              qword ptr [rbp + 672], 0
.Lx55_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 672]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              rax, 99
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n8_assign_α
n6_iterate_β:
                        inc              qword ptr [rbp + 672]
                                                                                        jmp   .Lx55_0
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n9_call_builtin_icon_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n10_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn59:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n11_var_α
                                                                                        jmp   n11_var_α
n9_call_builtin_icon_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_bound_α:
                        mov              qword ptr [rbp + 704], rsp
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n13_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_iterate_α:
                        mov              qword ptr [rbp + 352], 0
.Lx67_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 352]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              rax, 99
                                                                                        je    n14_lit_string_α
                                                                                        jmp   n17_assign_α
n13_iterate_β:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx67_0
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n19_op75_α
.Lx69_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n20_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n22_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn74:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n23_var_α
                                                                                        jmp   n23_var_α
n18_call_builtin_icon_β:
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op75_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 7
                                                                                        je    .Lx76_1
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
.Lx76_1:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n24_binop_α
.Lx76_0:
                        lea              rdi, [rbp + 1008]
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 848]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn78:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n21_unmark_α
                                                                                        jmp   n25_conjunction_α
n20_call_builtin_icon_β:
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_unmark_α:
                        mov              rsp, qword ptr [rbp + 704]
                                                                                        jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n22_bound_α:
                        mov              qword ptr [rbp + 384], rsp
                                                                                        jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n27_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
                        mov              rax, qword ptr [rbp + 856]
                        mov              rcx, 100
                        add              rax, rcx
                        mov              qword ptr [rbp + 832], 6
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n28_assign_α
.Lx85_0:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n16_var_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n28_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_conjunction_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n21_unmark_α
n25_conjunction_β:
                                                                                        jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n30_var_α
n26_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx88_0
                                                                                        jmp   n29_var_α
.Lx88_0:
                                                                                        jmp   n29_var_α
n26_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                                                                                        jmp   n29_var_α
n26_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_iterate_α:
                        mov              qword ptr [rbp + 32], 0
.Lx90_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n31_assign_α
n27_iterate_β:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx90_0
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n32_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n34_lit_integer_α
n30_var_β:
                                                                                        jmp   n26_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n35_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn98:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n33_unmark_α
                                                                                        jmp   n36_conjunction_α
n32_call_builtin_icon_β:
                                                                                        jmp   n33_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n33_unmark_α:
                        mov              rsp, qword ptr [rbp + 384]
                                                                                        jmp   n13_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n37_binop_test_α
.Lx101_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n35_bound_α:
                        mov              qword ptr [rbp + 64], rsp
                                                                                        jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_conjunction_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n33_unmark_α
n36_conjunction_β:
                                                                                        jmp   n33_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_test_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx105_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 100
                                                                                        je    .Lx105_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx105_2
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx105_2
.Lx105_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 584]
                        cmp              rax, rcx
                                                                                        jne   n26_disjunction_af
                        mov              rcx, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n14_lit_string_α
.Lx105_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8d, 9
                        lea              r9, [rbp + 544]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx105_1
                        cmp              eax, 1
                                                                                        je    n26_disjunction_af
                                                                                        jmp   n14_lit_string_α
.Lx105_2:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n26_disjunction_af
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n40_var_α
n38_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx107_0
                                                                                        jmp   n39_var_α
.Lx107_0:
                                                                                        jmp   n39_var_α
n38_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   n39_var_α
n38_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n41_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n43_lit_integer_α
n40_var_β:
                                                                                        jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn113:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n42_unmark_α
                                                                                        jmp   n44_conjunction_α
n41_call_builtin_icon_β:
                                                                                        jmp   n42_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n42_unmark_α:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n27_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n45_binop_test_α
.Lx116_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n42_unmark_α
n44_conjunction_β:
                                                                                        jmp   n42_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_test_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 100
                                                                                        je    .Lx118_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 100
                                                                                        je    .Lx118_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx118_2
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx118_2
.Lx118_1:
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 264]
                        cmp              rax, rcx
                                                                                        jne   n38_disjunction_af
                        mov              rcx, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rcx
                        mov              rcx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rcx
                                                                                        jmp   n42_unmark_α
.Lx118_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              r8d, 9
                        lea              r9, [rbp + 224]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx118_1
                        cmp              eax, 1
                                                                                        je    n38_disjunction_af
                                                                                        jmp   n42_unmark_α
.Lx118_2:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n38_disjunction_af
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n42_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1056]
                        add              rsp, 1064
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1056]
                        add              rsp, 1064
                        ret
                        .section         .note.GNU-stack,"",@progbits
