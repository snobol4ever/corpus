                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wset_α
proc_wset_α:
                        .global          proc_wset_α
                        .global          proc_wset_β
                        .global          proc_wset_γ
                        .global          proc_wset_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_wset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx39_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n5_keyword_icon_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx41_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_0:
                        cmp              eax, 1
                                                                                        jne   .Lx41_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_1:
                        cmp              eax, 2
                                                                                        jne   .Lx41_2
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_2:
                        cmp              eax, 3
                                                                                        jne   .Lx41_3
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_3:
                        cmp              eax, 4
                                                                                        jne   .Lx41_4
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_4:
                        cmp              eax, 5
                                                                                        jne   .Lx41_5
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_5:
                        cmp              eax, 6
                                                                                        jne   .Lx41_6
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_assign_α
.Lx41_6:
                                                                                        jmp   n4_assign_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n2_disjunction_af
                        cmp              eax, 1
                                                                                        je    n7_to_β
                        cmp              eax, 2
                                                                                        je    n9_to_β
                        cmp              eax, 3
                                                                                        je    n2_disjunction_af
                        cmp              eax, 4
                                                                                        je    n12_iterate_β
                        cmp              eax, 5
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_af
n2_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n6_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n8_lit_real_α
                        cmp              eax, 3
                                                                                        je    n10_lit_string_α
                        cmp              eax, 4
                                                                                        je    n11_lit_string_α
                        cmp              eax, 5
                                                                                        je    n13_lit_charset_α
                        cmp              eax, 6
                                                                                        je    n14_lit_charset_α
                                                                                        jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn43:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn43]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n16_lit_string_α
n3_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n17_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n5_keyword_icon_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                                                                                        jmp   n2_disjunction_as
n5_keyword_icon_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n18_lit_integer_α
n6_lit_integer_β:
                                                                                        jmp   n2_disjunction_af
.Lx46_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 176], rax
.Lx48_0:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        jg    n2_disjunction_af
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n2_disjunction_as
n7_to_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx48_0
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_real_α:
                        mov              qword ptr [rbp + 256], 7
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n19_lit_integer_α
n8_lit_real_β:
                                                                                        jmp   n2_disjunction_af
.Lx49_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n9_to_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 320], 6
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 288], rax
.Lx51_0:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 328]
                        cmp              rax, rcx
                                                                                        jg    n2_disjunction_af
                        mov              qword ptr [rbp + 272], 6
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n20_op75_α
n9_to_β:
                        inc              qword ptr [rbp + 288]
                                                                                        jmp   .Lx51_0
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n2_disjunction_as
n10_lit_string_β:
                                                                                        jmp   n2_disjunction_af
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n12_iterate_α
n11_lit_string_β:
                                                                                        jmp   n2_disjunction_af
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n12_iterate_α:
                        mov              qword ptr [rbp + 368], 0
.Lx55_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 368]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              rax, 99
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_as
n12_iterate_β:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx55_0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_charset_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              dword ptr [rbp + 404], -1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n2_disjunction_as
n13_lit_charset_β:
                                                                                        jmp   n2_disjunction_af
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_charset_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], -1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n2_disjunction_as
n14_lit_charset_β:
                                                                                        jmp   n2_disjunction_af
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "cs"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx58_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 248]
                        add              rax, rcx
                        mov              qword ptr [rbp + 224], 6
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n2_disjunction_as
.Lx58_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n2_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n2_disjunction_as
n15_binop_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n21_var_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n17_bound_α:
                        mov              qword ptr [rbp + 432], rsp
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n7_to_α
.Lx62_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n23_lit_integer_α
.Lx63_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_op75_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 7
                                                                                        je    .Lx65_1
                        cmp              eax, 6
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n15_binop_α
.Lx65_0:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n24_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n25_var_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n9_to_α
.Lx69_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n24_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n29_call_builtin_icon_α
.Lx73_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n30_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unmark_α:
                        mov              rsp, qword ptr [rbp + 432]
                                                                                        jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn79:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n31_lit_string_α
n29_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn81:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rbp + 624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n28_unmark_α
                                                                                        jmp   n32_call_builtin_icon_α
n30_call_builtin_icon_β:
                                                                                        jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          " :"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn84:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n28_unmark_α
                                                                                        jmp   n34_call_builtin_icon_α
n32_call_builtin_icon_β:
                                                                                        jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn86:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rbp + 720]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n2_disjunction_α
n33_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn88:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n28_unmark_α
                                                                                        jmp   n28_unmark_α
n34_call_builtin_icon_β:
                                                                                        jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn90:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rbp + 64]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n36_return_α
                                                                                        jmp   n36_return_α
n35_call_builtin_icon_β:
                                                                                        jmp   n36_return_α
#-----------------------------------------------------------------------------------------------------------------------
n36_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_wset_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_wset_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wset_β:
                                                                                        jmp   proc_wset_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wset_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1064]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wset_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wset_dcα:
                        pop              r11
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1056], r11
                        lea              rax, [rip + .Lx92_2]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rax, [rip + .Lx92_3]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1040
                        mov              edx, 1056
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wset_α_body
.Lx92_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx92_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "wset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wset_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wset_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 7688
                        mov              rdi, rsp
                        mov              ecx, 7688
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 7680], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 7568], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 7576], rax
                                                                                        jmp   n94_call_builtin_icon_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "empty"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn334:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rbp + 7616]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        cmp              eax, 99
                                                                                        je    n96_var_α
                                                                                        jmp   n95_assign_α
n94_call_builtin_icon_β:
                                                                                        jmp   n96_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rbp + 7600]
                        mov              rdx, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx
                                                                                        jmp   n97_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7488], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7496], rax
                                                                                        jmp   n98_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_proc_staged_α:
                        lea              rsi, [rbp + 7568]
                        lea              rdx, [rbp + 7584]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx339_2
.Lx339_2:
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        cmp              eax, 99
                                                                                        je    n96_var_α
                                                                                        jmp   n96_var_α
n97_call_proc_staged_β:
                                                                                        jmp   n96_var_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 7456], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 7464], rax
                        .section         .rodata
.Lrkfn341:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]
                        lea              rsi, [rbp + 7456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx
                        cmp              eax, 99
                                                                                        je    n99_var_ref_α
                                                                                        jmp   n100_call_builtin_icon_α
n98_call_builtin_icon_β:
                                                                                        jmp   n99_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                                                                                        jmp   n101_random_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7440]
                        mov              qword ptr [rbp + 7408], rax
                        mov              rax, qword ptr [rbp + 7448]
                        mov              qword ptr [rbp + 7416], rax
                        .section         .rodata
.Lrkfn345:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rbp + 7408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        cmp              eax, 99
                                                                                        je    n99_var_ref_α
                                                                                        jmp   n99_var_ref_α
n100_call_builtin_icon_β:
                                                                                        jmp   n99_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_random_α:
                        mov              rdi, qword ptr [rbp + 7360]
                        mov              rsi, qword ptr [rbp + 7368]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n103_var_α
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx
                                                                                        jmp   n102_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_deref_α:
                        mov              rdi, qword ptr [rbp + 7344]
                        mov              rsi, qword ptr [rbp + 7352]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n103_var_α
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   n104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 7312], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 7320], rax
                        .section         .rodata
.Lrkfn351:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rbp + 7312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 99
                                                                                        je    n103_var_α
                                                                                        jmp   n107_call_builtin_icon_α
n104_call_builtin_icon_β:
                                                                                        jmp   n103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7208], rax
                        .section         .rodata
.Lrkfn353:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 7200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7184], rax
                        mov              qword ptr [rbp + 7192], rdx
                        cmp              eax, 99
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n108_call_builtin_icon_α
n105_call_builtin_icon_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 7008], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n109_var_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7264], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7272], rax
                        .section         .rodata
.Lrkfn356:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]
                        lea              rsi, [rbp + 7264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx
                        cmp              eax, 99
                                                                                        je    n103_var_α
                                                                                        jmp   n103_var_α
n107_call_builtin_icon_β:
                                                                                        jmp   n103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7184]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 7192]
                        mov              qword ptr [rbp + 7160], rax
                        .section         .rodata
.Lrkfn358:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rbp + 7152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              eax, 99
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n110_call_builtin_icon_α
n108_call_builtin_icon_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7080], rax
                                                                                        jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7112], rax
                        .section         .rodata
.Lrkfn362:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 7104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7088], rax
                        mov              qword ptr [rbp + 7096], rdx
                        cmp              eax, 99
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n106_lit_string_α
n110_call_builtin_icon_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7072]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 7080]
                        mov              qword ptr [rbp + 7048], rax
                        .section         .rodata
.Lrkfn364:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rbp + 7040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        cmp              eax, 99
                                                                                        je    n112_var_ref_α
                                                                                        jmp   n113_call_proc_staged_α
n111_call_builtin_icon_β:
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                                                                                        jmp   n114_random_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        lea              rsi, [rbp + 7008]
                        lea              rdx, [rbp + 7024]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx368_2
.Lx368_2:
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        cmp              eax, 99
                                                                                        je    n112_var_ref_α
                                                                                        jmp   n112_var_ref_α
n113_call_proc_staged_β:
                                                                                        jmp   n112_var_ref_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n114_random_α:
                        mov              rdi, qword ptr [rbp + 6912]
                        mov              rsi, qword ptr [rbp + 6920]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n116_var_α
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                                                                                        jmp   n115_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_deref_α:
                        mov              rdi, qword ptr [rbp + 6896]
                        mov              rsi, qword ptr [rbp + 6904]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n116_var_α
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                                                                                        jmp   n117_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6784], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6792], rax
                                                                                        jmp   n118_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6872], rax
                        .section         .rodata
.Lrkfn374:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rbp + 6864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx
                        cmp              eax, 99
                                                                                        je    n116_var_α
                                                                                        jmp   n120_call_builtin_icon_α
n117_call_builtin_icon_β:
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6760], rax
                        .section         .rodata
.Lrkfn376:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn376]
                        lea              rsi, [rbp + 6752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        cmp              eax, 99
                                                                                        je    n119_var_α
                                                                                        jmp   n121_call_builtin_icon_α
n118_call_builtin_icon_β:
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6848]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6856]
                        mov              qword ptr [rbp + 6824], rax
                        .section         .rodata
.Lrkfn380:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rbp + 6816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        cmp              eax, 99
                                                                                        je    n116_var_α
                                                                                        jmp   n116_var_α
n120_call_builtin_icon_β:
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 6712], rax
                        .section         .rodata
.Lrkfn382:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rbp + 6704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n119_var_α
                                                                                        jmp   n124_call_builtin_icon_α
n121_call_builtin_icon_β:
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        mov              qword ptr [rbp + 6624], 6
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   n125_call_builtin_icon_α
.Lx383_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 6368], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n126_var_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6664], rax
                        .section         .rodata
.Lrkfn386:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]
                        lea              rsi, [rbp + 6656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                        cmp              eax, 99
                                                                                        je    n119_var_α
                                                                                        jmp   n119_var_α
n124_call_builtin_icon_β:
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6568], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6584], rax
                        .section         .rodata
.Lrkfn388:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn388]
                        lea              rsi, [rbp + 6560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        cmp              eax, 99
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n127_call_builtin_icon_α
n125_call_builtin_icon_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6432], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6520], rax
                        .section         .rodata
.Lrkfn392:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rbp + 6512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                        cmp              eax, 99
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n130_call_builtin_icon_α
n127_call_builtin_icon_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6400], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6408], rax
                        .section         .rodata
.Lrkfn394:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]
                        lea              rsi, [rbp + 6400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n131_call_proc_staged_α
n128_call_builtin_icon_β:
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 6224], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n132_var_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6496]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6504]
                        mov              qword ptr [rbp + 6472], rax
                        .section         .rodata
.Lrkfn397:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]
                        lea              rsi, [rbp + 6464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              eax, 99
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n123_lit_string_α
n130_call_builtin_icon_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        lea              rsi, [rbp + 6368]
                        lea              rdx, [rbp + 6384]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx399_2
.Lx399_2:
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n129_lit_string_α
n131_call_proc_staged_β:
                                                                                        jmp   n129_lit_string_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n133_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6264], rax
                        .section         .rodata
.Lrkfn403:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rbp + 6256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                        cmp              eax, 99
                                                                                        je    n134_lit_string_α
                                                                                        jmp   n135_call_proc_staged_α
n133_call_builtin_icon_β:
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 6080], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 6088], rax
                                                                                        jmp   n136_var_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        lea              rsi, [rbp + 6224]
                        lea              rdx, [rbp + 6240]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx406_2
.Lx406_2:
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 99
                                                                                        je    n134_lit_string_α
                                                                                        jmp   n134_lit_string_α
n135_call_proc_staged_β:
                                                                                        jmp   n134_lit_string_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n137_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6120], rax
                        .section         .rodata
.Lrkfn410:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rbp + 6112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n138_call_builtin_icon_α
                                                                                        jmp   n139_call_proc_staged_α
n137_call_builtin_icon_β:
                                                                                        jmp   n138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn412:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rbp + 6000]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        cmp              eax, 99
                                                                                        je    n140_lit_string_α
                                                                                        jmp   n140_lit_string_α
n138_call_builtin_icon_β:
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rbp + 6080]
                        lea              rdx, [rbp + 6096]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx414_2
.Lx414_2:
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n138_call_builtin_icon_α
                                                                                        jmp   n138_call_builtin_icon_α
n139_call_proc_staged_β:
                                                                                        jmp   n138_call_builtin_icon_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 5792], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 5800], rax
                                                                                        jmp   n141_lit_integer_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 5936], 6
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n142_lit_integer_α
.Lx416_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 5952], 6
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n143_lit_integer_α
.Lx417_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 5968], 6
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n144_make_list_α
.Lx418_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n144_make_list_α:
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 5896], rax
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5904], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5912], rax
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5928], rax
                        lea              rdi, [rbp + 5888]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5848], rax
                        .section         .rodata
.Lrkfn422:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rbp + 5840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              eax, 99
                                                                                        je    n147_lit_string_α
                                                                                        jmp   n146_assign_α
n145_call_builtin_icon_β:
                                                                                        jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rax, qword ptr [rbp + 5824]
                        mov              rdx, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                                                                                        jmp   n148_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 5536], 1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n149_lit_integer_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        lea              rsi, [rbp + 5792]
                        lea              rdx, [rbp + 5808]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx426_2
.Lx426_2:
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                        cmp              eax, 99
                                                                                        je    n147_lit_string_α
                                                                                        jmp   n147_lit_string_α
n148_call_proc_staged_β:
                                                                                        jmp   n147_lit_string_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 5680], 6
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   n150_lit_integer_α
.Lx427_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 5696], 6
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 5704], rax
                                                                                        jmp   n151_lit_integer_α
.Lx428_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 5712], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n152_make_list_α
.Lx429_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n152_make_list_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5640], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5656], rax
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5672], rax
                        lea              rdi, [rbp + 5632]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                                                                                        jmp   n153_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5592], rax
                        .section         .rodata
.Lrkfn433:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rbp + 5584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_string_α
                                                                                        jmp   n154_assign_α
n153_call_builtin_icon_β:
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:
                        mov              rax, qword ptr [rbp + 5568]
                        mov              rdx, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n156_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 5408], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n157_var_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "x ++ y"
#-----------------------------------------------------------------------------------------------------------------------
n156_call_proc_staged_α:
                        lea              rsi, [rbp + 5536]
                        lea              rdx, [rbp + 5552]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx437_2
.Lx437_2:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_string_α
                                                                                        jmp   n155_lit_string_α
n156_call_proc_staged_β:
                                                                                        jmp   n155_lit_string_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n158_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n160_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 5280], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n161_var_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "y ++ x"
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:
                        mov              rdi, qword ptr [rbp + 5440]
                        mov              rsi, qword ptr [rbp + 5448]
                        mov              rdx, qword ptr [rbp + 5456]
                        mov              rcx, qword ptr [rbp + 5464]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n159_lit_string_α
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                                                                                        jmp   n162_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_proc_staged_α:
                        lea              rsi, [rbp + 5408]
                        lea              rdx, [rbp + 5424]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx447_2
.Lx447_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    n159_lit_string_α
                                                                                        jmp   n159_lit_string_α
n162_call_proc_staged_β:
                                                                                        jmp   n159_lit_string_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n165_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 5152], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n166_var_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "x -- y"
#-----------------------------------------------------------------------------------------------------------------------
n165_binop_α:
                        mov              rdi, qword ptr [rbp + 5312]
                        mov              rsi, qword ptr [rbp + 5320]
                        mov              rdx, qword ptr [rbp + 5328]
                        mov              rcx, qword ptr [rbp + 5336]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n164_lit_string_α
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                                                                                        jmp   n167_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        lea              rsi, [rbp + 5280]
                        lea              rdx, [rbp + 5296]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx455_2
.Lx455_2:
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        cmp              eax, 99
                                                                                        je    n164_lit_string_α
                                                                                        jmp   n164_lit_string_α
n167_call_proc_staged_β:
                                                                                        jmp   n164_lit_string_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n170_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 5024], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n171_var_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "y -- x"
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:
                        mov              rdi, qword ptr [rbp + 5184]
                        mov              rsi, qword ptr [rbp + 5192]
                        mov              rdx, qword ptr [rbp + 5200]
                        mov              rcx, qword ptr [rbp + 5208]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n169_lit_string_α
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                                                                                        jmp   n172_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        lea              rsi, [rbp + 5152]
                        lea              rdx, [rbp + 5168]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx463_2
.Lx463_2:
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        cmp              eax, 99
                                                                                        je    n169_lit_string_α
                                                                                        jmp   n169_lit_string_α
n172_call_proc_staged_β:
                                                                                        jmp   n169_lit_string_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 5080], rax
                                                                                        jmp   n175_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 4896], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n176_var_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "x ** y"
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:
                        mov              rdi, qword ptr [rbp + 5056]
                        mov              rsi, qword ptr [rbp + 5064]
                        mov              rdx, qword ptr [rbp + 5072]
                        mov              rcx, qword ptr [rbp + 5080]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n174_lit_string_α
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n177_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4936], rax
                                                                                        jmp   n178_var_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        lea              rsi, [rbp + 5024]
                        lea              rdx, [rbp + 5040]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx471_2
.Lx471_2:
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              eax, 99
                                                                                        je    n174_lit_string_α
                                                                                        jmp   n174_lit_string_α
n177_call_proc_staged_β:
                                                                                        jmp   n174_lit_string_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n180_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n181_var_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "y ** x"
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:
                        mov              rdi, qword ptr [rbp + 4928]
                        mov              rsi, qword ptr [rbp + 4936]
                        mov              rdx, qword ptr [rbp + 4944]
                        mov              rcx, qword ptr [rbp + 4952]
                        call             rt_cinter@PLT
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n182_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 4808], rax
                                                                                        jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        lea              rsi, [rbp + 4896]
                        lea              rdx, [rbp + 4912]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx479_2
.Lx479_2:
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n179_lit_string_α
n182_call_proc_staged_β:
                                                                                        jmp   n179_lit_string_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n185_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn483:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]
                        lea              rsi, [rbp + 4688]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    n186_lit_string_α
                                                                                        jmp   n186_lit_string_α
n184_call_builtin_icon_β:
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        mov              rdx, qword ptr [rbp + 4816]
                        mov              rcx, qword ptr [rbp + 4824]
                        call             rt_cinter@PLT
                        cmp              eax, 99
                                                                                        je    n184_call_builtin_icon_α
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                                                                                        jmp   n187_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n188_keyword_icon_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "empty"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        lea              rsi, [rbp + 4768]
                        lea              rdx, [rbp + 4784]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx487_2
.Lx487_2:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 99
                                                                                        je    n184_call_builtin_icon_α
                                                                                        jmp   n184_call_builtin_icon_α
n187_call_proc_staged_β:
                                                                                        jmp   n184_call_builtin_icon_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n188_keyword_icon_α:
                        mov              qword ptr [rbp + 4640], 0
                        mov              qword ptr [rbp + 4648], 0
                                                                                        jmp   n189_call_builtin_icon_α
n188_keyword_icon_β:
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4616], rax
                        .section         .rodata
.Lrkfn490:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn490]
                        lea              rsi, [rbp + 4608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 99
                                                                                        je    n191_lit_string_α
                                                                                        jmp   n190_assign_α
n189_call_builtin_icon_β:
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              rdx, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n192_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 4320], 1
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n193_var_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "+ 1"
#-----------------------------------------------------------------------------------------------------------------------
n192_call_proc_staged_α:
                        lea              rsi, [rbp + 4560]
                        lea              rdx, [rbp + 4576]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx494_2
.Lx494_2:
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 99
                                                                                        je    n191_lit_string_α
                                                                                        jmp   n191_lit_string_α
n192_call_proc_staged_β:
                                                                                        jmp   n191_lit_string_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 4448], 6
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n196_lit_integer_α
.Lx497_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n197_var_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "+ 2"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rbp + 4464], 6
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n198_lit_integer_α
.Lx499_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n199_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:
                        mov              qword ptr [rbp + 4480], 6
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n201_call_builtin_icon_α
.Lx502_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 6
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n202_call_builtin_icon_α
.Lx503_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n203_var_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "+ c"
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4408], rax
                        .section         .rodata
.Lrkfn506:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rbp + 4352]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        cmp              eax, 99
                                                                                        je    n195_lit_string_α
                                                                                        jmp   n204_call_proc_staged_α
n201_call_builtin_icon_β:
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        .section         .rodata
.Lrkfn508:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]
                        lea              rsi, [rbp + 4176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n200_lit_string_α
                                                                                        jmp   n205_call_proc_staged_α
n202_call_builtin_icon_β:
                                                                                        jmp   n200_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_proc_staged_α:
                        lea              rsi, [rbp + 4320]
                        lea              rdx, [rbp + 4336]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx512_2
.Lx512_2:
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    n195_lit_string_α
                                                                                        jmp   n195_lit_string_α
n204_call_proc_staged_β:
                                                                                        jmp   n195_lit_string_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_proc_staged_α:
                        lea              rsi, [rbp + 4144]
                        lea              rdx, [rbp + 4160]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx514_2
.Lx514_2:
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n200_lit_string_α
                                                                                        jmp   n200_lit_string_α
n205_call_proc_staged_β:
                                                                                        jmp   n200_lit_string_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 4064], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n208_call_builtin_icon_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n209_var_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "- 3"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn518:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
                        lea              rsi, [rbp + 4000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n210_call_proc_staged_α
n208_call_builtin_icon_β:
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n211_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_proc_staged_α:
                        lea              rsi, [rbp + 3968]
                        lea              rdx, [rbp + 3984]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx522_2
.Lx522_2:
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              eax, 99
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n207_lit_string_α
n210_call_proc_staged_β:
                                                                                        jmp   n207_lit_string_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rbp + 3888], 6
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n213_call_builtin_icon_α
.Lx523_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 3584], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n214_var_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "- 1"
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3848], rax
                        .section         .rodata
.Lrkfn526:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rbp + 3824]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 99
                                                                                        je    n212_lit_string_α
                                                                                        jmp   n215_call_proc_staged_α
n213_call_builtin_icon_β:
                                                                                        jmp   n212_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n216_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_proc_staged_α:
                        lea              rsi, [rbp + 3792]
                        lea              rdx, [rbp + 3808]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx530_2
.Lx530_2:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              eax, 99
                                                                                        je    n212_lit_string_α
                                                                                        jmp   n212_lit_string_α
n215_call_proc_staged_β:
                                                                                        jmp   n212_lit_string_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:
                        mov              qword ptr [rbp + 3696], 6
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n218_lit_integer_α
.Lx531_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n219_var_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "- 1"
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n220_call_builtin_icon_α
.Lx533_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n221_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3656], rax
                        .section         .rodata
.Lrkfn537:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn537]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n223_call_proc_staged_α
n220_call_builtin_icon_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:
                        mov              qword ptr [rbp + 3504], 6
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n224_call_builtin_icon_α
.Lx538_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n225_var_α
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
                        .string          "+ 2"
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rbp + 3584]
                        lea              rdx, [rbp + 3600]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx541_2
.Lx541_2:
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n217_lit_string_α
n223_call_proc_staged_β:
                                                                                        jmp   n217_lit_string_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                        .section         .rodata
.Lrkfn543:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn543]
                        lea              rsi, [rbp + 3440]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    n222_lit_string_α
                                                                                        jmp   n226_call_proc_staged_α
n224_call_builtin_icon_β:
                                                                                        jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        lea              rsi, [rbp + 3408]
                        lea              rdx, [rbp + 3424]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx547_2
.Lx547_2:
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n222_lit_string_α
                                                                                        jmp   n222_lit_string_α
n226_call_proc_staged_β:
                                                                                        jmp   n222_lit_string_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        mov              qword ptr [rbp + 3328], 6
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n229_call_builtin_icon_α
.Lx548_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n230_var_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "+ 1"
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn551:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn551]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n228_lit_string_α
                                                                                        jmp   n231_call_proc_staged_α
n229_call_builtin_icon_β:
                                                                                        jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_proc_staged_α:
                        lea              rsi, [rbp + 3232]
                        lea              rdx, [rbp + 3248]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx555_2
.Lx555_2:
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n228_lit_string_α
                                                                                        jmp   n228_lit_string_α
n231_call_proc_staged_β:
                                                                                        jmp   n228_lit_string_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n234_call_builtin_icon_α
.Lx556_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n235_var_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "+ 7.0"
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3112], rax
                        .section         .rodata
.Lrkfn559:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn559]
                        lea              rsi, [rbp + 3088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n233_lit_string_α
                                                                                        jmp   n236_call_proc_staged_α
n234_call_builtin_icon_β:
                                                                                        jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n237_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        lea              rsi, [rbp + 3056]
                        lea              rdx, [rbp + 3072]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx563_2
.Lx563_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n233_lit_string_α
                                                                                        jmp   n233_lit_string_α
n236_call_proc_staged_β:
                                                                                        jmp   n233_lit_string_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_real_α:
                        mov              qword ptr [rbp + 2976], 7
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n239_call_builtin_icon_α
.Lx564_0:
                        .quad            4619567317775286272
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n240_var_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "+ 7.0"
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn567:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn567]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n238_lit_string_α
                                                                                        jmp   n241_call_proc_staged_α
n239_call_builtin_icon_β:
                                                                                        jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n242_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_proc_staged_α:
                        lea              rsi, [rbp + 2880]
                        lea              rdx, [rbp + 2896]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx571_2
.Lx571_2:
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n238_lit_string_α
                                                                                        jmp   n238_lit_string_α
n241_call_proc_staged_β:
                                                                                        jmp   n238_lit_string_α
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_real_α:
                        mov              qword ptr [rbp + 2800], 7
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n244_call_builtin_icon_α
.Lx572_0:
                        .quad            4619567317775286272
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n245_var_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "+ 'cs'"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn575:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn575]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n246_call_proc_staged_α
n244_call_builtin_icon_β:
                                                                                        jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n247_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_proc_staged_α:
                        lea              rsi, [rbp + 2704]
                        lea              rdx, [rbp + 2720]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx579_2
.Lx579_2:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n243_lit_string_α
n246_call_proc_staged_β:
                                                                                        jmp   n243_lit_string_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_charset_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              dword ptr [rbp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n249_call_builtin_icon_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "cs"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n250_var_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "+ 'cs'"
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn583:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn583]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n248_lit_string_α
                                                                                        jmp   n251_call_proc_staged_α
n249_call_builtin_icon_β:
                                                                                        jmp   n248_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n252_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        lea              rsi, [rbp + 2528]
                        lea              rdx, [rbp + 2544]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx587_2
.Lx587_2:
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n248_lit_string_α
                                                                                        jmp   n248_lit_string_α
n251_call_proc_staged_β:
                                                                                        jmp   n248_lit_string_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_charset_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              dword ptr [rbp + 2452], -1
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n254_call_builtin_icon_α
.Lx588_0:
                        .quad            .Lx588_0_s
.Lx588_0_s:
                        .string          "cs"
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n255_var_α
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "x ="
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn591:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn591]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n256_call_proc_staged_α
n254_call_builtin_icon_β:
                                                                                        jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n257_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        lea              rsi, [rbp + 2352]
                        lea              rdx, [rbp + 2368]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx595_2
.Lx595_2:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n253_lit_string_α
n256_call_proc_staged_β:
                                                                                        jmp   n253_lit_string_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        lea              rsi, [rbp + 2256]
                        lea              rdx, [rbp + 2272]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx597_2
.Lx597_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n258_call_builtin_icon_α
                                                                                        jmp   n258_call_builtin_icon_α
n257_call_proc_staged_β:
                                                                                        jmp   n258_call_builtin_icon_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn599:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn599]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n259_lit_string_α
                                                                                        jmp   n259_lit_string_α
n258_call_builtin_icon_β:
                                                                                        jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n260_lit_integer_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "3,a,4"
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n261_lit_string_α
.Lx601_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n262_lit_integer_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n263_make_list_α
.Lx603_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n263_make_list_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n264_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn607:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n266_lit_string_α
                                                                                        jmp   n265_assign_α
n264_call_builtin_icon_β:
                                                                                        jmp   n266_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n267_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n268_var_α
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "y ++ x"
#-----------------------------------------------------------------------------------------------------------------------
n267_call_proc_staged_α:
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1984]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx611_2
.Lx611_2:
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n266_lit_string_α
                                                                                        jmp   n266_lit_string_α
n267_call_proc_staged_β:
                                                                                        jmp   n266_lit_string_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n271_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n272_var_α
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "y ** x"
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n270_lit_string_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n273_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_proc_staged_α:
                        lea              rsi, [rbp + 1840]
                        lea              rdx, [rbp + 1856]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx621_2
.Lx621_2:
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n270_lit_string_α
                                                                                        jmp   n270_lit_string_α
n273_call_proc_staged_β:
                                                                                        jmp   n270_lit_string_α
.Lx621_0:
                        .quad            .Lx621_0_s
.Lx621_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n276_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n277_var_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "y -- x"
#-----------------------------------------------------------------------------------------------------------------------
n276_binop_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_cinter@PLT
                        cmp              eax, 99
                                                                                        je    n275_lit_string_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n278_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n278_call_proc_staged_α:
                        lea              rsi, [rbp + 1712]
                        lea              rdx, [rbp + 1728]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx629_2
.Lx629_2:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n275_lit_string_α
                                                                                        jmp   n275_lit_string_α
n278_call_proc_staged_β:
                                                                                        jmp   n275_lit_string_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n281_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n282_var_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "x -- y"
#-----------------------------------------------------------------------------------------------------------------------
n281_binop_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n280_lit_string_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n283_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_proc_staged_α:
                        lea              rsi, [rbp + 1584]
                        lea              rdx, [rbp + 1600]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx637_2
.Lx637_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n280_lit_string_α
                                                                                        jmp   n280_lit_string_α
n283_call_proc_staged_β:
                                                                                        jmp   n280_lit_string_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n286_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn641:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n287_call_builtin_icon_α
                                                                                        jmp   n287_call_builtin_icon_α
n285_call_builtin_icon_β:
                                                                                        jmp   n287_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n286_binop_α:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1512]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n285_call_builtin_icon_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n288_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn644:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n290_lit_string_α
                                                                                        jmp   n289_assign_α
n287_call_builtin_icon_β:
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_proc_staged_α:
                        lea              rsi, [rbp + 1456]
                        lea              rdx, [rbp + 1472]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx646_2
.Lx646_2:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n285_call_builtin_icon_α
                                                                                        jmp   n285_call_builtin_icon_α
n288_call_proc_staged_β:
                                                                                        jmp   n285_call_builtin_icon_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n291_var_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n292_var_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "z from !y"
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n293_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n294_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n293_iterate_α:
                        mov              qword ptr [rbp + 1328], 0
.Lx654_0:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1328]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              rax, 99
                                                                                        je    n290_lit_string_α
                                                                                        jmp   n296_call_builtin_icon_α
n293_iterate_β:
                        inc              qword ptr [rbp + 1328]
                                                                                        jmp   .Lx654_0
#-----------------------------------------------------------------------------------------------------------------------
n294_call_proc_staged_α:
                        lea              rsi, [rbp + 1168]
                        lea              rdx, [rbp + 1184]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx656_2
.Lx656_2:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_icon_α
                                                                                        jmp   n295_call_builtin_icon_α
n294_call_proc_staged_β:
                                                                                        jmp   n295_call_builtin_icon_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn658:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn658]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n297_lit_integer_α
                                                                                        jmp   n297_lit_integer_α
n295_call_builtin_icon_β:
                                                                                        jmp   n297_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn660:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn660]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n293_iterate_β
                                                                                        jmp   n293_iterate_β
n296_call_builtin_icon_β:
                                                                                        jmp   n293_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n298_lit_integer_α
.Lx661_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n299_lit_integer_α
.Lx662_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n300_lit_integer_α
.Lx663_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n301_lit_integer_α
.Lx664_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n302_lit_integer_α
.Lx665_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n303_lit_integer_α
.Lx666_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n304_lit_integer_α
.Lx667_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n305_lit_integer_α
.Lx668_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n306_lit_integer_α
.Lx669_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n307_lit_integer_α
.Lx670_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n308_make_list_α
.Lx671_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n308_make_list_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 11
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n309_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn675:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn675]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n311_var_α
                                                                                        jmp   n310_assign_α
n309_call_builtin_icon_β:
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n312_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn680:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n313_var_α
                                                                                        jmp   n314_assign_α
n312_call_builtin_icon_β:
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n317_call_builtin_icon_α
.Lx684_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n318_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn688:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn688]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n316_var_α
                                                                                        jmp   n316_var_α
n317_call_builtin_icon_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n320_call_builtin_icon_α
.Lx689_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n321_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn693:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn693]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n319_var_α
                                                                                        jmp   n319_var_α
n320_call_builtin_icon_β:
                                                                                        jmp   n319_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n323_call_builtin_icon_α
.Lx694_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n324_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn698:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn698]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n322_var_α
                                                                                        jmp   n322_var_α
n323_call_builtin_icon_β:
                                                                                        jmp   n322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n326_call_builtin_icon_α
.Lx699_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n327_var_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn702:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn702]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n325_lit_string_α
                                                                                        jmp   n325_lit_string_α
n326_call_builtin_icon_β:
                                                                                        jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n328_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        lea              rdx, [rbp + 176]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx706_2
.Lx706_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n329_lit_string_α
                                                                                        jmp   n329_lit_string_α
n328_call_proc_staged_β:
                                                                                        jmp   n329_lit_string_α
.Lx706_0:
                        .quad            .Lx706_0_s
.Lx706_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n330_var_α
.Lx707_0:
                        .quad            .Lx707_0_s
.Lx707_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 80]
                        call             proc_wset_dcα
                                                                                        jmp   .Lx711_2
.Lx711_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n331_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "wset"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 7680]
                        add              rsp, 7688
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 7680]
                        add              rsp, 7688
                        ret
                        .section         .note.GNU-stack,"",@progbits
