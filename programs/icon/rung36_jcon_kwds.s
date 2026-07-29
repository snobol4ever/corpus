                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_kw_α
proc_kw_α:
                        .global          proc_kw_α
                        .global          proc_kw_β
                        .global          proc_kw_γ
                        .global          proc_kw_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1024
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_kw_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n2_var_α
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
                                                                                        jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n5_unop_test_α
n2_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn52:               .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n6_lit_string_α
n3_call_builtin_icon_β:
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n7_var_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "&"
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_test_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n9_call_builtin_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n12_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn61:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n14_lit_string_α
                                                                                        jmp   n13_var_α
n9_call_builtin_β:
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_test_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n19_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n20_call_builtin_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx69_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n17_return_α
#-----------------------------------------------------------------------------------------------------------------------
n17_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_kw_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn76:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n25_var_α
                                                                                        jmp   n24_var_α
n20_call_builtin_β:
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn78:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n11_var_α
                                                                                        jmp   n26_lit_string_α
n21_call_builtin_icon_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n27_binop_test_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n30_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n31_var_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_test_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n32_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn90:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n33_lit_string_α
n29_call_builtin_icon_β:
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn92:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n34_assign_α
n30_call_builtin_icon_β:
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_conjunction_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n36_return_α
n32_conjunction_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n37_binop_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "  [size "
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
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
.Lrkfn99:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rbp + 96]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n11_var_α
                                                                                        jmp   n11_var_α
n35_call_builtin_icon_β:
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_kw_γ
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n40_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n40_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n41_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n43_binop_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_β:
                                                                                        jmp   proc_kw_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1064]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_dcα:
                        pop              r11
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1056], r11
                        lea              rax, [rip + .Lx111_2]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rax, [rip + .Lx111_3]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1024
                        mov              edx, 1056
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_kw_α_body
.Lx111_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx111_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nmap_α
proc_nmap_α:
                        .global          proc_nmap_α
                        .global          proc_nmap_β
                        .global          proc_nmap_γ
                        .global          proc_nmap_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_nmap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n114_lit_string_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 144], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n115_call_builtin_icon_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "nnnnnnnnnn"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn122:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rsp + 48]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_nmap_ω
                                                                                        jmp   n116_return_α
n115_call_builtin_icon_β:
                                                                                        jmp   proc_nmap_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_return_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 168]
                        add              rsp, 192
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_ω:
                        mov              rax, [rsp + 176]
                        add              rsp, 192
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_dcα:
                        pop              r11
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r11
                        lea              rax, [rip + .Lx124_2]
                        mov              qword ptr [rsp + 168], rax
                        lea              rax, [rip + .Lx124_3]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 160
                        mov              edx, 160
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_nmap_α_body
.Lx124_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -192
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx124_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -192
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
                        sub              rsp, 9496
                        mov              rdi, rsp
                        mov              ecx, 9496
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 9488], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 9472], 6
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 9480], rax
                                                                                        jmp   n126_keyword_assign_α
.Lx424_0:
                        .quad            747
#-----------------------------------------------------------------------------------------------------------------------
n126_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 9472]
                        mov              rsi, qword ptr [rbp + 9480]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n127_lit_string_α
                        mov              qword ptr [rbp + 9456], rax
                        mov              qword ptr [rbp + 9464], rdx
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 9360], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 9368], rax
                                                                                        jmp   n128_disjunction_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "allocated"
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:
                        mov              qword ptr [rbp + 9376], 0
                        mov              qword ptr [rbp + 9384], 0
                        mov              dword ptr [rbp + 9392], 0
                                                                                        jmp   n130_keyword_icon_gen_α
n128_disjunction_as:
                        mov              eax, dword ptr [rbp + 9392]
                        cmp              eax, 0
                                                                                        jne   .Lx428_0
                        mov              rax, qword ptr [rbp + 9408]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9416]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n129_call_proc_staged_α
.Lx428_0:
                        cmp              eax, 1
                                                                                        jne   .Lx428_1
                        mov              rax, qword ptr [rbp + 9440]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9448]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n129_call_proc_staged_α
.Lx428_1:
                                                                                        jmp   n129_call_proc_staged_α
n128_disjunction_β:
                        mov              eax, dword ptr [rbp + 9392]
                        cmp              eax, 0
                                                                                        je    n130_keyword_icon_gen_β
                                                                                        jmp   n128_disjunction_af
n128_disjunction_af:
                        add              dword ptr [rbp + 9392], 1
                        mov              eax, dword ptr [rbp + 9392]
                        cmp              eax, 1
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        lea              rsi, [rbp + 9360]
                        lea              rdx, [rbp + 9376]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx430_2
.Lx430_2:
                        mov              qword ptr [rbp + 9296], rax
                        mov              qword ptr [rbp + 9304], rdx
                        cmp              eax, 99
                                                                                        je    n128_disjunction_β
                                                                                        jmp   n128_disjunction_β
n129_call_proc_staged_β:
                                                                                        jmp   n128_disjunction_β
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n130_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 9424], 0
.Lx431_1:
                        mov              rdi, qword ptr [rip + .Lx431_0]
                        mov              rsi, qword ptr [rbp + 9424]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n128_disjunction_af
                        mov              qword ptr [rbp + 9408], rax
                        mov              qword ptr [rbp + 9416], rdx
                        mov              rax, qword ptr [rbp + 9424]
                        add              rax, 1
                        mov              qword ptr [rbp + 9424], rax
                                                                                        jmp   n128_disjunction_as
n130_keyword_icon_gen_β:
                                                                                        jmp   .Lx431_1
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "&allocated"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 9440], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 9448], rax
                                                                                        jmp   n128_disjunction_as
n131_lit_string_β:
                                                                                        jmp   n128_disjunction_af
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 9200], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 9208], rax
                                                                                        jmp   n133_disjunction_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
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
                                                                                        jne   .Lx435_0
                        mov              rax, qword ptr [rbp + 9248]
                        mov              qword ptr [rbp + 9216], rax
                        mov              rax, qword ptr [rbp + 9256]
                        mov              qword ptr [rbp + 9224], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx435_0:
                        cmp              eax, 1
                                                                                        jne   .Lx435_1
                        mov              rax, qword ptr [rbp + 9280]
                        mov              qword ptr [rbp + 9216], rax
                        mov              rax, qword ptr [rbp + 9288]
                        mov              qword ptr [rbp + 9224], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx435_1:
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
                                                                                        je    n137_lit_string_α
                                                                                        jmp   n135_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rbp + 9200]
                        lea              rdx, [rbp + 9216]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx437_2
.Lx437_2:
                        mov              qword ptr [rbp + 9136], rax
                        mov              qword ptr [rbp + 9144], rdx
                        cmp              eax, 99
                                                                                        je    n133_disjunction_β
                                                                                        jmp   n133_disjunction_β
n134_call_proc_staged_β:
                                                                                        jmp   n133_disjunction_β
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 8992], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 9000], rax
                                                                                        jmp   n138_disjunction_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "clock"
#-----------------------------------------------------------------------------------------------------------------------
n136_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx439_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n133_disjunction_af
                        mov              qword ptr [rbp + 9248], rax
                        mov              qword ptr [rbp + 9256], rdx
                                                                                        jmp   n133_disjunction_as
n136_keyword_icon_β:
                                                                                        jmp   n133_disjunction_af
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 9280], 1
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 9288], rax
                                                                                        jmp   n133_disjunction_as
n137_lit_string_β:
                                                                                        jmp   n133_disjunction_af
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n138_disjunction_α:
                        mov              qword ptr [rbp + 9008], 0
                        mov              qword ptr [rbp + 9016], 0
                        mov              dword ptr [rbp + 9024], 0
                                                                                        jmp   n141_keyword_icon_α
n138_disjunction_as:
                        mov              eax, dword ptr [rbp + 9024]
                        cmp              eax, 0
                                                                                        jne   .Lx442_0
                        mov              rax, qword ptr [rbp + 9040]
                        mov              qword ptr [rbp + 9008], rax
                        mov              rax, qword ptr [rbp + 9048]
                        mov              qword ptr [rbp + 9016], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx442_0:
                        cmp              eax, 1
                                                                                        jne   .Lx442_1
                        mov              rax, qword ptr [rbp + 9120]
                        mov              qword ptr [rbp + 9008], rax
                        mov              rax, qword ptr [rbp + 9128]
                        mov              qword ptr [rbp + 9016], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx442_1:
                                                                                        jmp   n139_call_proc_staged_α
n138_disjunction_β:
                        mov              eax, dword ptr [rbp + 9024]
                        cmp              eax, 0
                                                                                        je    n138_disjunction_af
                                                                                        jmp   n138_disjunction_af
n138_disjunction_af:
                        add              dword ptr [rbp + 9024], 1
                        mov              eax, dword ptr [rbp + 9024]
                        cmp              eax, 1
                                                                                        je    n142_lit_string_α
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rbp + 8992]
                        lea              rdx, [rbp + 9008]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx444_2
.Lx444_2:
                        mov              qword ptr [rbp + 8928], rax
                        mov              qword ptr [rbp + 8936], rdx
                        cmp              eax, 99
                                                                                        je    n138_disjunction_β
                                                                                        jmp   n138_disjunction_β
n139_call_proc_staged_β:
                                                                                        jmp   n138_disjunction_β
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 8832], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 8840], rax
                                                                                        jmp   n144_disjunction_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "col"
#-----------------------------------------------------------------------------------------------------------------------
n141_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx446_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n138_disjunction_af
                        mov              qword ptr [rbp + 9088], rax
                        mov              qword ptr [rbp + 9096], rdx
                                                                                        jmp   n143_call_proc_staged_α
n141_keyword_icon_β:
                                                                                        jmp   n138_disjunction_af
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "&clock"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 9120], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 9128], rax
                                                                                        jmp   n138_disjunction_as
n142_lit_string_β:
                                                                                        jmp   n138_disjunction_af
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              rsi, [rbp + 9088]
                        call             proc_nmap_dcα
                                                                                        jmp   .Lx449_2
.Lx449_2:
                        mov              qword ptr [rbp + 9040], rax
                        mov              qword ptr [rbp + 9048], rdx
                        cmp              eax, 99
                                                                                        je    n138_disjunction_af
                                                                                        jmp   n138_disjunction_as
n143_call_proc_staged_β:
                                                                                        jmp   n138_disjunction_af
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "nmap"
#-----------------------------------------------------------------------------------------------------------------------
n144_disjunction_α:
                        mov              qword ptr [rbp + 8848], 0
                        mov              qword ptr [rbp + 8856], 0
                        mov              dword ptr [rbp + 8864], 0
                                                                                        jmp   n147_keyword_icon_α
n144_disjunction_as:
                        mov              eax, dword ptr [rbp + 8864]
                        cmp              eax, 0
                                                                                        jne   .Lx451_0
                        mov              rax, qword ptr [rbp + 8880]
                        mov              qword ptr [rbp + 8848], rax
                        mov              rax, qword ptr [rbp + 8888]
                        mov              qword ptr [rbp + 8856], rax
                                                                                        jmp   n145_call_proc_staged_α
.Lx451_0:
                        cmp              eax, 1
                                                                                        jne   .Lx451_1
                        mov              rax, qword ptr [rbp + 8912]
                        mov              qword ptr [rbp + 8848], rax
                        mov              rax, qword ptr [rbp + 8920]
                        mov              qword ptr [rbp + 8856], rax
                                                                                        jmp   n145_call_proc_staged_α
.Lx451_1:
                                                                                        jmp   n145_call_proc_staged_α
n144_disjunction_β:
                        mov              eax, dword ptr [rbp + 8864]
                        cmp              eax, 0
                                                                                        je    n144_disjunction_af
                                                                                        jmp   n144_disjunction_af
n144_disjunction_af:
                        add              dword ptr [rbp + 8864], 1
                        mov              eax, dword ptr [rbp + 8864]
                        cmp              eax, 1
                                                                                        je    n148_lit_string_α
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        lea              rsi, [rbp + 8832]
                        lea              rdx, [rbp + 8848]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx453_2
.Lx453_2:
                        mov              qword ptr [rbp + 8768], rax
                        mov              qword ptr [rbp + 8776], rdx
                        cmp              eax, 99
                                                                                        je    n144_disjunction_β
                                                                                        jmp   n144_disjunction_β
n145_call_proc_staged_β:
                                                                                        jmp   n144_disjunction_β
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 8672], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 8680], rax
                                                                                        jmp   n149_disjunction_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n147_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx455_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n144_disjunction_af
                        mov              qword ptr [rbp + 8880], rax
                        mov              qword ptr [rbp + 8888], rdx
                                                                                        jmp   n144_disjunction_as
n147_keyword_icon_β:
                                                                                        jmp   n144_disjunction_af
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "&col"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 8912], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 8920], rax
                                                                                        jmp   n144_disjunction_as
n148_lit_string_β:
                                                                                        jmp   n144_disjunction_af
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:
                        mov              qword ptr [rbp + 8688], 0
                        mov              qword ptr [rbp + 8696], 0
                        mov              dword ptr [rbp + 8704], 0
                                                                                        jmp   n152_keyword_icon_gen_α
n149_disjunction_as:
                        mov              eax, dword ptr [rbp + 8704]
                        cmp              eax, 0
                                                                                        jne   .Lx458_0
                        mov              rax, qword ptr [rbp + 8720]
                        mov              qword ptr [rbp + 8688], rax
                        mov              rax, qword ptr [rbp + 8728]
                        mov              qword ptr [rbp + 8696], rax
                                                                                        jmp   n150_call_proc_staged_α
.Lx458_0:
                        cmp              eax, 1
                                                                                        jne   .Lx458_1
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 8688], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 8696], rax
                                                                                        jmp   n150_call_proc_staged_α
.Lx458_1:
                                                                                        jmp   n150_call_proc_staged_α
n149_disjunction_β:
                        mov              eax, dword ptr [rbp + 8704]
                        cmp              eax, 0
                                                                                        je    n152_keyword_icon_gen_β
                                                                                        jmp   n149_disjunction_af
n149_disjunction_af:
                        add              dword ptr [rbp + 8704], 1
                        mov              eax, dword ptr [rbp + 8704]
                        cmp              eax, 1
                                                                                        je    n153_lit_string_α
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        lea              rsi, [rbp + 8672]
                        lea              rdx, [rbp + 8688]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx460_2
.Lx460_2:
                        mov              qword ptr [rbp + 8608], rax
                        mov              qword ptr [rbp + 8616], rdx
                        cmp              eax, 99
                                                                                        je    n149_disjunction_β
                                                                                        jmp   n149_disjunction_β
n150_call_proc_staged_β:
                                                                                        jmp   n149_disjunction_β
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 8512], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 8520], rax
                                                                                        jmp   n154_disjunction_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "control"
#-----------------------------------------------------------------------------------------------------------------------
n152_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 8736], 0
.Lx462_1:
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              rsi, qword ptr [rbp + 8736]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n149_disjunction_af
                        mov              qword ptr [rbp + 8720], rax
                        mov              qword ptr [rbp + 8728], rdx
                        mov              rax, qword ptr [rbp + 8736]
                        add              rax, 1
                        mov              qword ptr [rbp + 8736], rax
                                                                                        jmp   n149_disjunction_as
n152_keyword_icon_gen_β:
                                                                                        jmp   .Lx462_1
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 8752], 1
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n149_disjunction_as
n153_lit_string_β:
                                                                                        jmp   n149_disjunction_af
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n154_disjunction_α:
                        mov              qword ptr [rbp + 8528], 0
                        mov              qword ptr [rbp + 8536], 0
                        mov              dword ptr [rbp + 8544], 0
                                                                                        jmp   n157_keyword_icon_α
n154_disjunction_as:
                        mov              eax, dword ptr [rbp + 8544]
                        cmp              eax, 0
                                                                                        jne   .Lx465_0
                        mov              rax, qword ptr [rbp + 8560]
                        mov              qword ptr [rbp + 8528], rax
                        mov              rax, qword ptr [rbp + 8568]
                        mov              qword ptr [rbp + 8536], rax
                                                                                        jmp   n155_call_proc_staged_α
.Lx465_0:
                        cmp              eax, 1
                                                                                        jne   .Lx465_1
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8528], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8536], rax
                                                                                        jmp   n155_call_proc_staged_α
.Lx465_1:
                                                                                        jmp   n155_call_proc_staged_α
n154_disjunction_β:
                        mov              eax, dword ptr [rbp + 8544]
                        cmp              eax, 0
                                                                                        je    n154_disjunction_af
                                                                                        jmp   n154_disjunction_af
n154_disjunction_af:
                        add              dword ptr [rbp + 8544], 1
                        mov              eax, dword ptr [rbp + 8544]
                        cmp              eax, 1
                                                                                        je    n158_lit_string_α
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rbp + 8512]
                        lea              rdx, [rbp + 8528]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx467_2
.Lx467_2:
                        mov              qword ptr [rbp + 8448], rax
                        mov              qword ptr [rbp + 8456], rdx
                        cmp              eax, 99
                                                                                        je    n154_disjunction_β
                                                                                        jmp   n154_disjunction_β
n155_call_proc_staged_β:
                                                                                        jmp   n154_disjunction_β
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 8352], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 8360], rax
                                                                                        jmp   n159_disjunction_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n157_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx469_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n154_disjunction_af
                        mov              qword ptr [rbp + 8560], rax
                        mov              qword ptr [rbp + 8568], rdx
                                                                                        jmp   n154_disjunction_as
n157_keyword_icon_β:
                                                                                        jmp   n154_disjunction_af
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "&control"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 8592], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 8600], rax
                                                                                        jmp   n154_disjunction_as
n158_lit_string_β:
                                                                                        jmp   n154_disjunction_af
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n159_disjunction_α:
                        mov              qword ptr [rbp + 8368], 0
                        mov              qword ptr [rbp + 8376], 0
                        mov              dword ptr [rbp + 8384], 0
                                                                                        jmp   n162_keyword_icon_α
n159_disjunction_as:
                        mov              eax, dword ptr [rbp + 8384]
                        cmp              eax, 0
                                                                                        jne   .Lx472_0
                        mov              rax, qword ptr [rbp + 8400]
                        mov              qword ptr [rbp + 8368], rax
                        mov              rax, qword ptr [rbp + 8408]
                        mov              qword ptr [rbp + 8376], rax
                                                                                        jmp   n160_call_proc_staged_α
.Lx472_0:
                        cmp              eax, 1
                                                                                        jne   .Lx472_1
                        mov              rax, qword ptr [rbp + 8432]
                        mov              qword ptr [rbp + 8368], rax
                        mov              rax, qword ptr [rbp + 8440]
                        mov              qword ptr [rbp + 8376], rax
                                                                                        jmp   n160_call_proc_staged_α
.Lx472_1:
                                                                                        jmp   n160_call_proc_staged_α
n159_disjunction_β:
                        mov              eax, dword ptr [rbp + 8384]
                        cmp              eax, 0
                                                                                        je    n159_disjunction_af
                                                                                        jmp   n159_disjunction_af
n159_disjunction_af:
                        add              dword ptr [rbp + 8384], 1
                        mov              eax, dword ptr [rbp + 8384]
                        cmp              eax, 1
                                                                                        je    n163_lit_string_α
                                                                                        jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        lea              rsi, [rbp + 8352]
                        lea              rdx, [rbp + 8368]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx474_2
.Lx474_2:
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                        cmp              eax, 99
                                                                                        je    n159_disjunction_β
                                                                                        jmp   n159_disjunction_β
n160_call_proc_staged_β:
                                                                                        jmp   n159_disjunction_β
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        mov              qword ptr [rbp + 8192], 1
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 8200], rax
                                                                                        jmp   n164_disjunction_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "current"
#-----------------------------------------------------------------------------------------------------------------------
n162_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx476_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n159_disjunction_af
                        mov              qword ptr [rbp + 8400], rax
                        mov              qword ptr [rbp + 8408], rdx
                                                                                        jmp   n159_disjunction_as
n162_keyword_icon_β:
                                                                                        jmp   n159_disjunction_af
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 8432], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 8440], rax
                                                                                        jmp   n159_disjunction_as
n163_lit_string_β:
                                                                                        jmp   n159_disjunction_af
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n164_disjunction_α:
                        mov              qword ptr [rbp + 8208], 0
                        mov              qword ptr [rbp + 8216], 0
                        mov              dword ptr [rbp + 8224], 0
                                                                                        jmp   n167_keyword_icon_α
n164_disjunction_as:
                        mov              eax, dword ptr [rbp + 8224]
                        cmp              eax, 0
                                                                                        jne   .Lx479_0
                        mov              rax, qword ptr [rbp + 8240]
                        mov              qword ptr [rbp + 8208], rax
                        mov              rax, qword ptr [rbp + 8248]
                        mov              qword ptr [rbp + 8216], rax
                                                                                        jmp   n165_call_proc_staged_α
.Lx479_0:
                        cmp              eax, 1
                                                                                        jne   .Lx479_1
                        mov              rax, qword ptr [rbp + 8272]
                        mov              qword ptr [rbp + 8208], rax
                        mov              rax, qword ptr [rbp + 8280]
                        mov              qword ptr [rbp + 8216], rax
                                                                                        jmp   n165_call_proc_staged_α
.Lx479_1:
                                                                                        jmp   n165_call_proc_staged_α
n164_disjunction_β:
                        mov              eax, dword ptr [rbp + 8224]
                        cmp              eax, 0
                                                                                        je    n164_disjunction_af
                                                                                        jmp   n164_disjunction_af
n164_disjunction_af:
                        add              dword ptr [rbp + 8224], 1
                        mov              eax, dword ptr [rbp + 8224]
                        cmp              eax, 1
                                                                                        je    n168_lit_string_α
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        lea              rsi, [rbp + 8192]
                        lea              rdx, [rbp + 8208]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx481_2
.Lx481_2:
                        mov              qword ptr [rbp + 8128], rax
                        mov              qword ptr [rbp + 8136], rdx
                        cmp              eax, 99
                                                                                        je    n164_disjunction_β
                                                                                        jmp   n164_disjunction_β
n165_call_proc_staged_β:
                                                                                        jmp   n164_disjunction_β
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 7984], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 7992], rax
                                                                                        jmp   n169_disjunction_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "date"
#-----------------------------------------------------------------------------------------------------------------------
n167_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx483_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n164_disjunction_af
                        mov              qword ptr [rbp + 8240], rax
                        mov              qword ptr [rbp + 8248], rdx
                                                                                        jmp   n164_disjunction_as
n167_keyword_icon_β:
                                                                                        jmp   n164_disjunction_af
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "&current"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 8272], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 8280], rax
                                                                                        jmp   n164_disjunction_as
n168_lit_string_β:
                                                                                        jmp   n164_disjunction_af
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n169_disjunction_α:
                        mov              qword ptr [rbp + 8000], 0
                        mov              qword ptr [rbp + 8008], 0
                        mov              dword ptr [rbp + 8016], 0
                                                                                        jmp   n172_keyword_icon_α
n169_disjunction_as:
                        mov              eax, dword ptr [rbp + 8016]
                        cmp              eax, 0
                                                                                        jne   .Lx486_0
                        mov              rax, qword ptr [rbp + 8032]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8040]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n170_call_proc_staged_α
.Lx486_0:
                        cmp              eax, 1
                                                                                        jne   .Lx486_1
                        mov              rax, qword ptr [rbp + 8112]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8120]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n170_call_proc_staged_α
.Lx486_1:
                                                                                        jmp   n170_call_proc_staged_α
n169_disjunction_β:
                        mov              eax, dword ptr [rbp + 8016]
                        cmp              eax, 0
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n169_disjunction_af
n169_disjunction_af:
                        add              dword ptr [rbp + 8016], 1
                        mov              eax, dword ptr [rbp + 8016]
                        cmp              eax, 1
                                                                                        je    n173_lit_string_α
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        lea              rsi, [rbp + 7984]
                        lea              rdx, [rbp + 8000]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx488_2
.Lx488_2:
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                        cmp              eax, 99
                                                                                        je    n169_disjunction_β
                                                                                        jmp   n169_disjunction_β
n170_call_proc_staged_β:
                                                                                        jmp   n169_disjunction_β
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 7792], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 7800], rax
                                                                                        jmp   n175_disjunction_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "dateline"
#-----------------------------------------------------------------------------------------------------------------------
n172_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx490_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n169_disjunction_af
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                                                                                        jmp   n174_call_proc_staged_α
n172_keyword_icon_β:
                                                                                        jmp   n169_disjunction_af
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "&date"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 8112], 1
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n169_disjunction_as
n173_lit_string_β:
                                                                                        jmp   n169_disjunction_af
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n174_call_proc_staged_α:
                        lea              rsi, [rbp + 8080]
                        call             proc_nmap_dcα
                                                                                        jmp   .Lx493_2
.Lx493_2:
                        mov              qword ptr [rbp + 8032], rax
                        mov              qword ptr [rbp + 8040], rdx
                        cmp              eax, 99
                                                                                        je    n169_disjunction_af
                                                                                        jmp   n169_disjunction_as
n174_call_proc_staged_β:
                                                                                        jmp   n169_disjunction_af
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "nmap"
#-----------------------------------------------------------------------------------------------------------------------
n175_disjunction_α:
                        mov              qword ptr [rbp + 7808], 0
                        mov              qword ptr [rbp + 7816], 0
                        mov              dword ptr [rbp + 7824], 0
                                                                                        jmp   n178_keyword_icon_α
n175_disjunction_as:
                        mov              eax, dword ptr [rbp + 7824]
                        cmp              eax, 0
                                                                                        jne   .Lx495_0
                        mov              rax, qword ptr [rbp + 7840]
                        mov              qword ptr [rbp + 7808], rax
                        mov              rax, qword ptr [rbp + 7848]
                        mov              qword ptr [rbp + 7816], rax
                                                                                        jmp   n176_call_proc_staged_α
.Lx495_0:
                        cmp              eax, 1
                                                                                        jne   .Lx495_1
                        mov              rax, qword ptr [rbp + 7904]
                        mov              qword ptr [rbp + 7808], rax
                        mov              rax, qword ptr [rbp + 7912]
                        mov              qword ptr [rbp + 7816], rax
                                                                                        jmp   n176_call_proc_staged_α
.Lx495_1:
                                                                                        jmp   n176_call_proc_staged_α
n175_disjunction_β:
                        mov              eax, dword ptr [rbp + 7824]
                        cmp              eax, 0
                                                                                        je    n175_disjunction_af
                                                                                        jmp   n175_disjunction_af
n175_disjunction_af:
                        add              dword ptr [rbp + 7824], 1
                        mov              eax, dword ptr [rbp + 7824]
                        cmp              eax, 1
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        lea              rsi, [rbp + 7792]
                        lea              rdx, [rbp + 7808]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx497_2
.Lx497_2:
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        cmp              eax, 99
                                                                                        je    n175_disjunction_β
                                                                                        jmp   n175_disjunction_β
n176_call_proc_staged_β:
                                                                                        jmp   n175_disjunction_β
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 7648], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 7656], rax
                                                                                        jmp   n181_disjunction_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "digits"
#-----------------------------------------------------------------------------------------------------------------------
n178_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx499_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n175_disjunction_af
                        mov              qword ptr [rbp + 7856], rax
                        mov              qword ptr [rbp + 7864], rdx
                                                                                        jmp   n182_lit_charset_α
n178_keyword_icon_β:
                                                                                        jmp   n175_disjunction_af
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "&dateline"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 7904], 1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 7912], rax
                                                                                        jmp   n175_disjunction_as
n179_lit_string_β:
                                                                                        jmp   n175_disjunction_af
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:
                        mov              rdi, qword ptr [rbp + 7856]
                        mov              rsi, qword ptr [rbp + 7864]
                        mov              rdx, qword ptr [rbp + 7888]
                        mov              rcx, qword ptr [rbp + 7896]
                        call             rt_cinter@PLT
                        cmp              eax, 99
                                                                                        je    n175_disjunction_af
                        mov              qword ptr [rbp + 7840], rax
                        mov              qword ptr [rbp + 7848], rdx
                                                                                        jmp   n175_disjunction_as
n180_binop_β:
                                                                                        jmp   n175_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n181_disjunction_α:
                        mov              qword ptr [rbp + 7664], 0
                        mov              qword ptr [rbp + 7672], 0
                        mov              dword ptr [rbp + 7680], 0
                                                                                        jmp   n185_lit_charset_α
n181_disjunction_as:
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 0
                                                                                        jne   .Lx503_0
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n183_call_proc_staged_α
.Lx503_0:
                        cmp              eax, 1
                                                                                        jne   .Lx503_1
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n183_call_proc_staged_α
.Lx503_1:
                                                                                        jmp   n183_call_proc_staged_α
n181_disjunction_β:
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 0
                                                                                        je    n181_disjunction_af
                                                                                        jmp   n181_disjunction_af
n181_disjunction_af:
                        add              dword ptr [rbp + 7680], 1
                        mov              eax, dword ptr [rbp + 7680]
                        cmp              eax, 1
                                                                                        je    n186_lit_string_α
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_charset_α:
                        mov              qword ptr [rbp + 7888], 1
                        mov              dword ptr [rbp + 7892], -1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 7896], rax
                                                                                        jmp   n180_binop_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          " ,:EILRadfkmwxy"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_proc_staged_α:
                        lea              rsi, [rbp + 7648]
                        lea              rdx, [rbp + 7664]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx506_2
.Lx506_2:
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx
                        cmp              eax, 99
                                                                                        je    n181_disjunction_β
                                                                                        jmp   n181_disjunction_β
n183_call_proc_staged_β:
                                                                                        jmp   n181_disjunction_β
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 7488], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 7496], rax
                                                                                        jmp   n187_disjunction_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "dump"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_charset_α:
                        mov              qword ptr [rbp + 7696], 1
                        mov              dword ptr [rbp + 7700], -1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 7704], rax
                                                                                        jmp   n181_disjunction_as
n185_lit_charset_β:
                                                                                        jmp   n181_disjunction_af
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 7712], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 7720], rax
                                                                                        jmp   n181_disjunction_as
n186_lit_string_β:
                                                                                        jmp   n181_disjunction_af
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n187_disjunction_α:
                        mov              qword ptr [rbp + 7504], 0
                        mov              qword ptr [rbp + 7512], 0
                        mov              dword ptr [rbp + 7520], 0
                                                                                        jmp   n190_keyword_icon_α
n187_disjunction_as:
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 0
                                                                                        jne   .Lx511_0
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n188_call_proc_staged_α
.Lx511_0:
                        cmp              eax, 1
                                                                                        jne   .Lx511_1
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n188_call_proc_staged_α
.Lx511_1:
                                                                                        jmp   n188_call_proc_staged_α
n187_disjunction_β:
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 0
                                                                                        je    n187_disjunction_af
                                                                                        jmp   n187_disjunction_af
n187_disjunction_af:
                        add              dword ptr [rbp + 7520], 1
                        mov              eax, dword ptr [rbp + 7520]
                        cmp              eax, 1
                                                                                        je    n191_lit_string_α
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              rsi, [rbp + 7488]
                        lea              rdx, [rbp + 7504]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx513_2
.Lx513_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n187_disjunction_β
                                                                                        jmp   n187_disjunction_β
n188_call_proc_staged_β:
                                                                                        jmp   n187_disjunction_β
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 7328], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 7336], rax
                                                                                        jmp   n192_disjunction_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n190_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx515_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n187_disjunction_af
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                                                                                        jmp   n187_disjunction_as
n190_keyword_icon_β:
                                                                                        jmp   n187_disjunction_af
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "&dump"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 7568], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 7576], rax
                                                                                        jmp   n187_disjunction_as
n191_lit_string_β:
                                                                                        jmp   n187_disjunction_af
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n192_disjunction_α:
                        mov              qword ptr [rbp + 7344], 0
                        mov              qword ptr [rbp + 7352], 0
                        mov              dword ptr [rbp + 7360], 0
                                                                                        jmp   n195_keyword_icon_α
n192_disjunction_as:
                        mov              eax, dword ptr [rbp + 7360]
                        cmp              eax, 0
                                                                                        jne   .Lx518_0
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 7344], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   n193_call_proc_staged_α
.Lx518_0:
                        cmp              eax, 1
                                                                                        jne   .Lx518_1
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7344], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7352], rax
                                                                                        jmp   n193_call_proc_staged_α
.Lx518_1:
                                                                                        jmp   n193_call_proc_staged_α
n192_disjunction_β:
                        mov              eax, dword ptr [rbp + 7360]
                        cmp              eax, 0
                                                                                        je    n192_disjunction_af
                                                                                        jmp   n192_disjunction_af
n192_disjunction_af:
                        add              dword ptr [rbp + 7360], 1
                        mov              eax, dword ptr [rbp + 7360]
                        cmp              eax, 1
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rbp + 7328]
                        lea              rdx, [rbp + 7344]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx520_2
.Lx520_2:
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              eax, 99
                                                                                        je    n192_disjunction_β
                                                                                        jmp   n192_disjunction_β
n193_call_proc_staged_β:
                                                                                        jmp   n192_disjunction_β
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 7168], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 7176], rax
                                                                                        jmp   n197_disjunction_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n195_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx522_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n192_disjunction_af
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   n192_disjunction_as
n195_keyword_icon_β:
                                                                                        jmp   n192_disjunction_af
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 7408], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 7416], rax
                                                                                        jmp   n192_disjunction_as
n196_lit_string_β:
                                                                                        jmp   n192_disjunction_af
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n197_disjunction_α:
                        mov              qword ptr [rbp + 7184], 0
                        mov              qword ptr [rbp + 7192], 0
                        mov              dword ptr [rbp + 7200], 0
                                                                                        jmp   n200_keyword_icon_α
n197_disjunction_as:
                        mov              eax, dword ptr [rbp + 7200]
                        cmp              eax, 0
                                                                                        jne   .Lx525_0
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7192], rax
                                                                                        jmp   n198_call_proc_staged_α
.Lx525_0:
                        cmp              eax, 1
                                                                                        jne   .Lx525_1
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7192], rax
                                                                                        jmp   n198_call_proc_staged_α
.Lx525_1:
                                                                                        jmp   n198_call_proc_staged_α
n197_disjunction_β:
                        mov              eax, dword ptr [rbp + 7200]
                        cmp              eax, 0
                                                                                        je    n197_disjunction_af
                                                                                        jmp   n197_disjunction_af
n197_disjunction_af:
                        add              dword ptr [rbp + 7200], 1
                        mov              eax, dword ptr [rbp + 7200]
                        cmp              eax, 1
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        lea              rsi, [rbp + 7168]
                        lea              rdx, [rbp + 7184]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx527_2
.Lx527_2:
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                        cmp              eax, 99
                                                                                        je    n197_disjunction_β
                                                                                        jmp   n197_disjunction_β
n198_call_proc_staged_β:
                                                                                        jmp   n197_disjunction_β
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 7008], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n202_disjunction_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n200_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx529_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n197_disjunction_af
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                                                                                        jmp   n197_disjunction_as
n200_keyword_icon_β:
                                                                                        jmp   n197_disjunction_af
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n197_disjunction_as
n201_lit_string_β:
                                                                                        jmp   n197_disjunction_af
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n202_disjunction_α:
                        mov              qword ptr [rbp + 7024], 0
                        mov              qword ptr [rbp + 7032], 0
                        mov              dword ptr [rbp + 7040], 0
                                                                                        jmp   n205_keyword_icon_α
n202_disjunction_as:
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 0
                                                                                        jne   .Lx532_0
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n203_call_proc_staged_α
.Lx532_0:
                        cmp              eax, 1
                                                                                        jne   .Lx532_1
                        mov              rax, qword ptr [rbp + 7088]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 7096]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n203_call_proc_staged_α
.Lx532_1:
                                                                                        jmp   n203_call_proc_staged_α
n202_disjunction_β:
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 0
                                                                                        je    n202_disjunction_af
                                                                                        jmp   n202_disjunction_af
n202_disjunction_af:
                        add              dword ptr [rbp + 7040], 1
                        mov              eax, dword ptr [rbp + 7040]
                        cmp              eax, 1
                                                                                        je    n206_lit_string_α
                                                                                        jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_proc_staged_α:
                        lea              rsi, [rbp + 7008]
                        lea              rdx, [rbp + 7024]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx534_2
.Lx534_2:
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        cmp              eax, 99
                                                                                        je    n202_disjunction_β
                                                                                        jmp   n202_disjunction_β
n203_call_proc_staged_β:
                                                                                        jmp   n202_disjunction_β
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 6848], 1
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 6856], rax
                                                                                        jmp   n207_disjunction_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "errortext"
#-----------------------------------------------------------------------------------------------------------------------
n205_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx536_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n202_disjunction_af
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                                                                                        jmp   n202_disjunction_as
n205_keyword_icon_β:
                                                                                        jmp   n202_disjunction_af
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 7088], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 7096], rax
                                                                                        jmp   n202_disjunction_as
n206_lit_string_β:
                                                                                        jmp   n202_disjunction_af
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n207_disjunction_α:
                        mov              qword ptr [rbp + 6864], 0
                        mov              qword ptr [rbp + 6872], 0
                        mov              dword ptr [rbp + 6880], 0
                                                                                        jmp   n210_keyword_icon_α
n207_disjunction_as:
                        mov              eax, dword ptr [rbp + 6880]
                        cmp              eax, 0
                                                                                        jne   .Lx539_0
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n208_call_proc_staged_α
.Lx539_0:
                        cmp              eax, 1
                                                                                        jne   .Lx539_1
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n208_call_proc_staged_α
.Lx539_1:
                                                                                        jmp   n208_call_proc_staged_α
n207_disjunction_β:
                        mov              eax, dword ptr [rbp + 6880]
                        cmp              eax, 0
                                                                                        je    n207_disjunction_af
                                                                                        jmp   n207_disjunction_af
n207_disjunction_af:
                        add              dword ptr [rbp + 6880], 1
                        mov              eax, dword ptr [rbp + 6880]
                        cmp              eax, 1
                                                                                        je    n211_lit_string_α
                                                                                        jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        lea              rsi, [rbp + 6848]
                        lea              rdx, [rbp + 6864]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx541_2
.Lx541_2:
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              eax, 99
                                                                                        je    n207_disjunction_β
                                                                                        jmp   n207_disjunction_β
n208_call_proc_staged_β:
                                                                                        jmp   n207_disjunction_β
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 6688], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 6696], rax
                                                                                        jmp   n212_disjunction_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n210_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx543_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n207_disjunction_af
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                                                                                        jmp   n207_disjunction_as
n210_keyword_icon_β:
                                                                                        jmp   n207_disjunction_af
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 6928], 1
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 6936], rax
                                                                                        jmp   n207_disjunction_as
n211_lit_string_β:
                                                                                        jmp   n207_disjunction_af
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n212_disjunction_α:
                        mov              qword ptr [rbp + 6704], 0
                        mov              qword ptr [rbp + 6712], 0
                        mov              dword ptr [rbp + 6720], 0
                                                                                        jmp   n215_keyword_icon_α
n212_disjunction_as:
                        mov              eax, dword ptr [rbp + 6720]
                        cmp              eax, 0
                                                                                        jne   .Lx546_0
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 6712], rax
                                                                                        jmp   n213_call_proc_staged_α
.Lx546_0:
                        cmp              eax, 1
                                                                                        jne   .Lx546_1
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6712], rax
                                                                                        jmp   n213_call_proc_staged_α
.Lx546_1:
                                                                                        jmp   n213_call_proc_staged_α
n212_disjunction_β:
                        mov              eax, dword ptr [rbp + 6720]
                        cmp              eax, 0
                                                                                        je    n212_disjunction_af
                                                                                        jmp   n212_disjunction_af
n212_disjunction_af:
                        add              dword ptr [rbp + 6720], 1
                        mov              eax, dword ptr [rbp + 6720]
                        cmp              eax, 1
                                                                                        je    n216_lit_string_α
                                                                                        jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        lea              rsi, [rbp + 6688]
                        lea              rdx, [rbp + 6704]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx548_2
.Lx548_2:
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx
                        cmp              eax, 99
                                                                                        je    n212_disjunction_β
                                                                                        jmp   n212_disjunction_β
n213_call_proc_staged_β:
                                                                                        jmp   n212_disjunction_β
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rbp + 6528], 1
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 6536], rax
                                                                                        jmp   n217_disjunction_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "errout"
#-----------------------------------------------------------------------------------------------------------------------
n215_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx550_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n212_disjunction_af
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   n212_disjunction_as
n215_keyword_icon_β:
                                                                                        jmp   n212_disjunction_af
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 6768], 1
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 6776], rax
                                                                                        jmp   n212_disjunction_as
n216_lit_string_β:
                                                                                        jmp   n212_disjunction_af
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n217_disjunction_α:
                        mov              qword ptr [rbp + 6544], 0
                        mov              qword ptr [rbp + 6552], 0
                        mov              dword ptr [rbp + 6560], 0
                                                                                        jmp   n220_keyword_icon_α
n217_disjunction_as:
                        mov              eax, dword ptr [rbp + 6560]
                        cmp              eax, 0
                                                                                        jne   .Lx553_0
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   n218_call_proc_staged_α
.Lx553_0:
                        cmp              eax, 1
                                                                                        jne   .Lx553_1
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6552], rax
                                                                                        jmp   n218_call_proc_staged_α
.Lx553_1:
                                                                                        jmp   n218_call_proc_staged_α
n217_disjunction_β:
                        mov              eax, dword ptr [rbp + 6560]
                        cmp              eax, 0
                                                                                        je    n217_disjunction_af
                                                                                        jmp   n217_disjunction_af
n217_disjunction_af:
                        add              dword ptr [rbp + 6560], 1
                        mov              eax, dword ptr [rbp + 6560]
                        cmp              eax, 1
                                                                                        je    n221_lit_string_α
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_proc_staged_α:
                        lea              rsi, [rbp + 6528]
                        lea              rdx, [rbp + 6544]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx555_2
.Lx555_2:
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        cmp              eax, 99
                                                                                        je    n217_disjunction_β
                                                                                        jmp   n217_disjunction_β
n218_call_proc_staged_β:
                                                                                        jmp   n217_disjunction_β
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 6368], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n222_disjunction_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n220_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx557_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n217_disjunction_af
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx
                                                                                        jmp   n217_disjunction_as
n220_keyword_icon_β:
                                                                                        jmp   n217_disjunction_af
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 6608], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n217_disjunction_as
n221_lit_string_β:
                                                                                        jmp   n217_disjunction_af
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n222_disjunction_α:
                        mov              qword ptr [rbp + 6384], 0
                        mov              qword ptr [rbp + 6392], 0
                        mov              dword ptr [rbp + 6400], 0
                                                                                        jmp   n225_keyword_icon_α
n222_disjunction_as:
                        mov              eax, dword ptr [rbp + 6400]
                        cmp              eax, 0
                                                                                        jne   .Lx560_0
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n223_call_proc_staged_α
.Lx560_0:
                        cmp              eax, 1
                                                                                        jne   .Lx560_1
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n223_call_proc_staged_α
.Lx560_1:
                                                                                        jmp   n223_call_proc_staged_α
n222_disjunction_β:
                        mov              eax, dword ptr [rbp + 6400]
                        cmp              eax, 0
                                                                                        je    n222_disjunction_af
                                                                                        jmp   n222_disjunction_af
n222_disjunction_af:
                        add              dword ptr [rbp + 6400], 1
                        mov              eax, dword ptr [rbp + 6400]
                        cmp              eax, 1
                                                                                        je    n226_lit_string_α
                                                                                        jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rbp + 6368]
                        lea              rdx, [rbp + 6384]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx562_2
.Lx562_2:
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              eax, 99
                                                                                        je    n222_disjunction_β
                                                                                        jmp   n222_disjunction_β
n223_call_proc_staged_β:
                                                                                        jmp   n222_disjunction_β
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 6176], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rbp + 6184], rax
                                                                                        jmp   n227_disjunction_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "features"
#-----------------------------------------------------------------------------------------------------------------------
n225_keyword_icon_α:
                                                                                        jmp   n222_disjunction_af
n225_keyword_icon_β:
                                                                                        jmp   n222_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rbp + 6448], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 6456], rax
                                                                                        jmp   n222_disjunction_as
n226_lit_string_β:
                                                                                        jmp   n222_disjunction_af
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n227_disjunction_α:
                        mov              qword ptr [rbp + 6192], 0
                        mov              qword ptr [rbp + 6200], 0
                        mov              dword ptr [rbp + 6208], 0
                                                                                        jmp   n230_lit_string_α
n227_disjunction_as:
                        mov              eax, dword ptr [rbp + 6208]
                        cmp              eax, 0
                                                                                        jne   .Lx567_0
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   n228_call_proc_staged_α
.Lx567_0:
                        cmp              eax, 1
                                                                                        jne   .Lx567_1
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   n228_call_proc_staged_α
.Lx567_1:
                                                                                        jmp   n228_call_proc_staged_α
n227_disjunction_β:
                        mov              eax, dword ptr [rbp + 6208]
                        cmp              eax, 0
                                                                                        je    n231_keyword_icon_gen_β
                                                                                        jmp   n227_disjunction_af
n227_disjunction_af:
                        add              dword ptr [rbp + 6208], 1
                        mov              eax, dword ptr [rbp + 6208]
                        cmp              eax, 1
                                                                                        je    n232_lit_string_α
                                                                                        jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_proc_staged_α:
                        lea              rsi, [rbp + 6176]
                        lea              rdx, [rbp + 6192]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx569_2
.Lx569_2:
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              eax, 99
                                                                                        je    n227_disjunction_β
                                                                                        jmp   n227_disjunction_β
n228_call_proc_staged_β:
                                                                                        jmp   n227_disjunction_β
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 6016], 1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n234_disjunction_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 6240], 1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n231_keyword_icon_gen_α
n230_lit_string_β:
                                                                                        jmp   n227_disjunction_af
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "Macintosh"
#-----------------------------------------------------------------------------------------------------------------------
n231_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 6272], 0
.Lx572_1:
                        mov              rdi, qword ptr [rip + .Lx572_0]
                        mov              rsi, qword ptr [rbp + 6272]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n227_disjunction_af
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                        mov              rax, qword ptr [rbp + 6272]
                        add              rax, 1
                        mov              qword ptr [rbp + 6272], rax
                                                                                        jmp   n233_binop_test_α
n231_keyword_icon_gen_β:
                                                                                        jmp   .Lx572_1
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        mov              qword ptr [rbp + 6288], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n227_disjunction_as
n232_lit_string_β:
                                                                                        jmp   n227_disjunction_af
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6240]
                        mov              rsi, qword ptr [rbp + 6248]
                        mov              rdx, qword ptr [rbp + 6256]
                        mov              rcx, qword ptr [rbp + 6264]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n231_keyword_icon_gen_β
                        mov              rdi, qword ptr [rbp + 6256]
                        mov              rsi, qword ptr [rbp + 6264]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 6224], rax
                        mov              qword ptr [rbp + 6232], rdx
                                                                                        jmp   n227_disjunction_as
n233_binop_test_β:
                                                                                        jmp   n231_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n234_disjunction_α:
                        mov              qword ptr [rbp + 6032], 0
                        mov              qword ptr [rbp + 6040], 0
                        mov              dword ptr [rbp + 6048], 0
                                                                                        jmp   n237_keyword_icon_α
n234_disjunction_as:
                        mov              eax, dword ptr [rbp + 6048]
                        cmp              eax, 0
                                                                                        jne   .Lx576_0
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6040], rax
                                                                                        jmp   n235_call_proc_staged_α
.Lx576_0:
                        cmp              eax, 1
                                                                                        jne   .Lx576_1
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6040], rax
                                                                                        jmp   n235_call_proc_staged_α
.Lx576_1:
                                                                                        jmp   n235_call_proc_staged_α
n234_disjunction_β:
                        mov              eax, dword ptr [rbp + 6048]
                        cmp              eax, 0
                                                                                        je    n234_disjunction_af
                                                                                        jmp   n234_disjunction_af
n234_disjunction_af:
                        add              dword ptr [rbp + 6048], 1
                        mov              eax, dword ptr [rbp + 6048]
                        cmp              eax, 1
                                                                                        je    n238_lit_string_α
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_proc_staged_α:
                        lea              rsi, [rbp + 6016]
                        lea              rdx, [rbp + 6032]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx578_2
.Lx578_2:
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx
                        cmp              eax, 99
                                                                                        je    n234_disjunction_β
                                                                                        jmp   n234_disjunction_β
n235_call_proc_staged_β:
                                                                                        jmp   n234_disjunction_β
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 5856], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 5864], rax
                                                                                        jmp   n239_disjunction_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "interval"
#-----------------------------------------------------------------------------------------------------------------------
n237_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx580_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n234_disjunction_af
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   n234_disjunction_as
n237_keyword_icon_β:
                                                                                        jmp   n234_disjunction_af
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n234_disjunction_as
n238_lit_string_β:
                                                                                        jmp   n234_disjunction_af
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n239_disjunction_α:
                        mov              qword ptr [rbp + 5872], 0
                        mov              qword ptr [rbp + 5880], 0
                        mov              dword ptr [rbp + 5888], 0
                                                                                        jmp   n242_keyword_icon_α
n239_disjunction_as:
                        mov              eax, dword ptr [rbp + 5888]
                        cmp              eax, 0
                                                                                        jne   .Lx583_0
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n240_call_proc_staged_α
.Lx583_0:
                        cmp              eax, 1
                                                                                        jne   .Lx583_1
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n240_call_proc_staged_α
.Lx583_1:
                                                                                        jmp   n240_call_proc_staged_α
n239_disjunction_β:
                        mov              eax, dword ptr [rbp + 5888]
                        cmp              eax, 0
                                                                                        je    n239_disjunction_af
                                                                                        jmp   n239_disjunction_af
n239_disjunction_af:
                        add              dword ptr [rbp + 5888], 1
                        mov              eax, dword ptr [rbp + 5888]
                        cmp              eax, 1
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_proc_staged_α:
                        lea              rsi, [rbp + 5856]
                        lea              rdx, [rbp + 5872]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx585_2
.Lx585_2:
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 99
                                                                                        je    n239_disjunction_β
                                                                                        jmp   n239_disjunction_β
n240_call_proc_staged_β:
                                                                                        jmp   n239_disjunction_β
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 5712], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n244_disjunction_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "lcase"
#-----------------------------------------------------------------------------------------------------------------------
n242_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx587_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n239_disjunction_af
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                                                                                        jmp   n239_disjunction_as
n242_keyword_icon_β:
                                                                                        jmp   n239_disjunction_af
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "&interval"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 5936], 1
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n239_disjunction_as
n243_lit_string_β:
                                                                                        jmp   n239_disjunction_af
.Lx588_0:
                        .quad            .Lx588_0_s
.Lx588_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n244_disjunction_α:
                        mov              qword ptr [rbp + 5728], 0
                        mov              qword ptr [rbp + 5736], 0
                        mov              dword ptr [rbp + 5744], 0
                                                                                        jmp   n247_lit_charset_α
n244_disjunction_as:
                        mov              eax, dword ptr [rbp + 5744]
                        cmp              eax, 0
                                                                                        jne   .Lx590_0
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5736], rax
                                                                                        jmp   n245_call_proc_staged_α
.Lx590_0:
                        cmp              eax, 1
                                                                                        jne   .Lx590_1
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5736], rax
                                                                                        jmp   n245_call_proc_staged_α
.Lx590_1:
                                                                                        jmp   n245_call_proc_staged_α
n244_disjunction_β:
                        mov              eax, dword ptr [rbp + 5744]
                        cmp              eax, 0
                                                                                        je    n244_disjunction_af
                                                                                        jmp   n244_disjunction_af
n244_disjunction_af:
                        add              dword ptr [rbp + 5744], 1
                        mov              eax, dword ptr [rbp + 5744]
                        cmp              eax, 1
                                                                                        je    n248_lit_string_α
                                                                                        jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_proc_staged_α:
                        lea              rsi, [rbp + 5712]
                        lea              rdx, [rbp + 5728]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx592_2
.Lx592_2:
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              eax, 99
                                                                                        je    n244_disjunction_β
                                                                                        jmp   n244_disjunction_β
n245_call_proc_staged_β:
                                                                                        jmp   n244_disjunction_β
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 5552], 1
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n249_disjunction_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "ldrag"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_charset_α:
                        mov              qword ptr [rbp + 5760], 1
                        mov              dword ptr [rbp + 5764], -1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 5768], rax
                                                                                        jmp   n244_disjunction_as
n247_lit_charset_β:
                                                                                        jmp   n244_disjunction_af
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n244_disjunction_as
n248_lit_string_β:
                                                                                        jmp   n244_disjunction_af
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n249_disjunction_α:
                        mov              qword ptr [rbp + 5568], 0
                        mov              qword ptr [rbp + 5576], 0
                        mov              dword ptr [rbp + 5584], 0
                                                                                        jmp   n252_keyword_icon_α
n249_disjunction_as:
                        mov              eax, dword ptr [rbp + 5584]
                        cmp              eax, 0
                                                                                        jne   .Lx597_0
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n250_call_proc_staged_α
.Lx597_0:
                        cmp              eax, 1
                                                                                        jne   .Lx597_1
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n250_call_proc_staged_α
.Lx597_1:
                                                                                        jmp   n250_call_proc_staged_α
n249_disjunction_β:
                        mov              eax, dword ptr [rbp + 5584]
                        cmp              eax, 0
                                                                                        je    n249_disjunction_af
                                                                                        jmp   n249_disjunction_af
n249_disjunction_af:
                        add              dword ptr [rbp + 5584], 1
                        mov              eax, dword ptr [rbp + 5584]
                        cmp              eax, 1
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n251_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx599_2
.Lx599_2:
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                        cmp              eax, 99
                                                                                        je    n249_disjunction_β
                                                                                        jmp   n249_disjunction_β
n250_call_proc_staged_β:
                                                                                        jmp   n249_disjunction_β
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 5408], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n254_disjunction_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "letters"
#-----------------------------------------------------------------------------------------------------------------------
n252_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx601_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n249_disjunction_af
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                                                                                        jmp   n249_disjunction_as
n252_keyword_icon_β:
                                                                                        jmp   n249_disjunction_af
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "&ldrag"
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 5632], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 5640], rax
                                                                                        jmp   n249_disjunction_as
n253_lit_string_β:
                                                                                        jmp   n249_disjunction_af
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n254_disjunction_α:
                        mov              qword ptr [rbp + 5424], 0
                        mov              qword ptr [rbp + 5432], 0
                        mov              dword ptr [rbp + 5440], 0
                                                                                        jmp   n257_lit_charset_α
n254_disjunction_as:
                        mov              eax, dword ptr [rbp + 5440]
                        cmp              eax, 0
                                                                                        jne   .Lx604_0
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n255_call_proc_staged_α
.Lx604_0:
                        cmp              eax, 1
                                                                                        jne   .Lx604_1
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n255_call_proc_staged_α
.Lx604_1:
                                                                                        jmp   n255_call_proc_staged_α
n254_disjunction_β:
                        mov              eax, dword ptr [rbp + 5440]
                        cmp              eax, 0
                                                                                        je    n254_disjunction_af
                                                                                        jmp   n254_disjunction_af
n254_disjunction_af:
                        add              dword ptr [rbp + 5440], 1
                        mov              eax, dword ptr [rbp + 5440]
                        cmp              eax, 1
                                                                                        je    n258_lit_string_α
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_proc_staged_α:
                        lea              rsi, [rbp + 5408]
                        lea              rdx, [rbp + 5424]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx606_2
.Lx606_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    n254_disjunction_β
                                                                                        jmp   n254_disjunction_β
n255_call_proc_staged_β:
                                                                                        jmp   n254_disjunction_β
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 5248], 1
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rbp + 5256], rax
                                                                                        jmp   n259_disjunction_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_charset_α:
                        mov              qword ptr [rbp + 5456], 1
                        mov              dword ptr [rbp + 5460], -1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n254_disjunction_as
n257_lit_charset_β:
                                                                                        jmp   n254_disjunction_af
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rbp + 5472], 1
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   n254_disjunction_as
n258_lit_string_β:
                                                                                        jmp   n254_disjunction_af
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n259_disjunction_α:
                        mov              qword ptr [rbp + 5264], 0
                        mov              qword ptr [rbp + 5272], 0
                        mov              dword ptr [rbp + 5280], 0
                                                                                        jmp   n262_keyword_icon_α
n259_disjunction_as:
                        mov              eax, dword ptr [rbp + 5280]
                        cmp              eax, 0
                                                                                        jne   .Lx611_0
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n260_call_proc_staged_α
.Lx611_0:
                        cmp              eax, 1
                                                                                        jne   .Lx611_1
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n260_call_proc_staged_α
.Lx611_1:
                                                                                        jmp   n260_call_proc_staged_α
n259_disjunction_β:
                        mov              eax, dword ptr [rbp + 5280]
                        cmp              eax, 0
                                                                                        je    n259_disjunction_af
                                                                                        jmp   n259_disjunction_af
n259_disjunction_af:
                        add              dword ptr [rbp + 5280], 1
                        mov              eax, dword ptr [rbp + 5280]
                        cmp              eax, 1
                                                                                        je    n263_lit_string_α
                                                                                        jmp   n261_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_proc_staged_α:
                        lea              rsi, [rbp + 5248]
                        lea              rdx, [rbp + 5264]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx613_2
.Lx613_2:
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              eax, 99
                                                                                        je    n259_disjunction_β
                                                                                        jmp   n259_disjunction_β
n260_call_proc_staged_β:
                                                                                        jmp   n259_disjunction_β
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rbp + 5088], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n264_disjunction_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "lpress"
#-----------------------------------------------------------------------------------------------------------------------
n262_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx615_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n259_disjunction_af
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                                                                                        jmp   n259_disjunction_as
n262_keyword_icon_β:
                                                                                        jmp   n259_disjunction_af
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n259_disjunction_as
n263_lit_string_β:
                                                                                        jmp   n259_disjunction_af
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:
                        mov              qword ptr [rbp + 5104], 0
                        mov              qword ptr [rbp + 5112], 0
                        mov              dword ptr [rbp + 5120], 0
                                                                                        jmp   n267_keyword_icon_α
n264_disjunction_as:
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 0
                                                                                        jne   .Lx618_0
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n265_call_proc_staged_α
.Lx618_0:
                        cmp              eax, 1
                                                                                        jne   .Lx618_1
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n265_call_proc_staged_α
.Lx618_1:
                                                                                        jmp   n265_call_proc_staged_α
n264_disjunction_β:
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 0
                                                                                        je    n264_disjunction_af
                                                                                        jmp   n264_disjunction_af
n264_disjunction_af:
                        add              dword ptr [rbp + 5120], 1
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 1
                                                                                        je    n268_lit_string_α
                                                                                        jmp   n266_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_proc_staged_α:
                        lea              rsi, [rbp + 5088]
                        lea              rdx, [rbp + 5104]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx620_2
.Lx620_2:
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    n264_disjunction_β
                                                                                        jmp   n264_disjunction_β
n265_call_proc_staged_β:
                                                                                        jmp   n264_disjunction_β
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 4928], 1
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rbp + 4936], rax
                                                                                        jmp   n269_disjunction_α
.Lx621_0:
                        .quad            .Lx621_0_s
.Lx621_0_s:
                        .string          "lrelease"
#-----------------------------------------------------------------------------------------------------------------------
n267_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx622_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n264_disjunction_af
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                                                                                        jmp   n264_disjunction_as
n267_keyword_icon_β:
                                                                                        jmp   n264_disjunction_af
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "&lpress"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 5168], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n264_disjunction_as
n268_lit_string_β:
                                                                                        jmp   n264_disjunction_af
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:
                        mov              qword ptr [rbp + 4944], 0
                        mov              qword ptr [rbp + 4952], 0
                        mov              dword ptr [rbp + 4960], 0
                                                                                        jmp   n272_keyword_icon_α
n269_disjunction_as:
                        mov              eax, dword ptr [rbp + 4960]
                        cmp              eax, 0
                                                                                        jne   .Lx625_0
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n270_call_proc_staged_α
.Lx625_0:
                        cmp              eax, 1
                                                                                        jne   .Lx625_1
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n270_call_proc_staged_α
.Lx625_1:
                                                                                        jmp   n270_call_proc_staged_α
n269_disjunction_β:
                        mov              eax, dword ptr [rbp + 4960]
                        cmp              eax, 0
                                                                                        je    n269_disjunction_af
                                                                                        jmp   n269_disjunction_af
n269_disjunction_af:
                        add              dword ptr [rbp + 4960], 1
                        mov              eax, dword ptr [rbp + 4960]
                        cmp              eax, 1
                                                                                        je    n273_lit_string_α
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        lea              rsi, [rbp + 4928]
                        lea              rdx, [rbp + 4944]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx627_2
.Lx627_2:
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              eax, 99
                                                                                        je    n269_disjunction_β
                                                                                        jmp   n269_disjunction_β
n270_call_proc_staged_β:
                                                                                        jmp   n269_disjunction_β
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n274_disjunction_α
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n272_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx629_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n269_disjunction_af
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n269_disjunction_as
n272_keyword_icon_β:
                                                                                        jmp   n269_disjunction_af
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "&lrelease"
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 5008], 1
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n269_disjunction_as
n273_lit_string_β:
                                                                                        jmp   n269_disjunction_af
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n274_disjunction_α:
                        mov              qword ptr [rbp + 4784], 0
                        mov              qword ptr [rbp + 4792], 0
                        mov              dword ptr [rbp + 4800], 0
                                                                                        jmp   n277_keyword_icon_α
n274_disjunction_as:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 0
                                                                                        jne   .Lx632_0
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n275_call_proc_staged_α
.Lx632_0:
                        cmp              eax, 1
                                                                                        jne   .Lx632_1
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n275_call_proc_staged_α
.Lx632_1:
                                                                                        jmp   n275_call_proc_staged_α
n274_disjunction_β:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 0
                                                                                        je    n274_disjunction_af
                                                                                        jmp   n274_disjunction_af
n274_disjunction_af:
                        add              dword ptr [rbp + 4800], 1
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 1
                                                                                        je    n278_lit_string_α
                                                                                        jmp   n276_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_proc_staged_α:
                        lea              rsi, [rbp + 4768]
                        lea              rdx, [rbp + 4784]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx634_2
.Lx634_2:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 99
                                                                                        je    n274_disjunction_β
                                                                                        jmp   n274_disjunction_β
n275_call_proc_staged_β:
                                                                                        jmp   n274_disjunction_β
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 4608], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n279_disjunction_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "mdrag"
#-----------------------------------------------------------------------------------------------------------------------
n277_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx636_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n274_disjunction_af
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   n274_disjunction_as
n277_keyword_icon_β:
                                                                                        jmp   n274_disjunction_af
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "&main"
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rbp + 4848], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n274_disjunction_as
n278_lit_string_β:
                                                                                        jmp   n274_disjunction_af
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n279_disjunction_α:
                        mov              qword ptr [rbp + 4624], 0
                        mov              qword ptr [rbp + 4632], 0
                        mov              dword ptr [rbp + 4640], 0
                                                                                        jmp   n282_keyword_icon_α
n279_disjunction_as:
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 0
                                                                                        jne   .Lx639_0
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n280_call_proc_staged_α
.Lx639_0:
                        cmp              eax, 1
                                                                                        jne   .Lx639_1
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n280_call_proc_staged_α
.Lx639_1:
                                                                                        jmp   n280_call_proc_staged_α
n279_disjunction_β:
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 0
                                                                                        je    n279_disjunction_af
                                                                                        jmp   n279_disjunction_af
n279_disjunction_af:
                        add              dword ptr [rbp + 4640], 1
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 1
                                                                                        je    n283_lit_string_α
                                                                                        jmp   n281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_proc_staged_α:
                        lea              rsi, [rbp + 4608]
                        lea              rdx, [rbp + 4624]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx641_2
.Lx641_2:
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                        cmp              eax, 99
                                                                                        je    n279_disjunction_β
                                                                                        jmp   n279_disjunction_β
n280_call_proc_staged_β:
                                                                                        jmp   n279_disjunction_β
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 4448], 1
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n284_disjunction_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "meta"
#-----------------------------------------------------------------------------------------------------------------------
n282_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx643_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n279_disjunction_af
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                                                                                        jmp   n279_disjunction_as
n282_keyword_icon_β:
                                                                                        jmp   n279_disjunction_af
.Lx643_0:
                        .quad            .Lx643_0_s
.Lx643_0_s:
                        .string          "&mdrag"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n279_disjunction_as
n283_lit_string_β:
                                                                                        jmp   n279_disjunction_af
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n284_disjunction_α:
                        mov              qword ptr [rbp + 4464], 0
                        mov              qword ptr [rbp + 4472], 0
                        mov              dword ptr [rbp + 4480], 0
                                                                                        jmp   n287_keyword_icon_α
n284_disjunction_as:
                        mov              eax, dword ptr [rbp + 4480]
                        cmp              eax, 0
                                                                                        jne   .Lx646_0
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n285_call_proc_staged_α
.Lx646_0:
                        cmp              eax, 1
                                                                                        jne   .Lx646_1
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n285_call_proc_staged_α
.Lx646_1:
                                                                                        jmp   n285_call_proc_staged_α
n284_disjunction_β:
                        mov              eax, dword ptr [rbp + 4480]
                        cmp              eax, 0
                                                                                        je    n284_disjunction_af
                                                                                        jmp   n284_disjunction_af
n284_disjunction_af:
                        add              dword ptr [rbp + 4480], 1
                        mov              eax, dword ptr [rbp + 4480]
                        cmp              eax, 1
                                                                                        je    n288_lit_string_α
                                                                                        jmp   n286_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_proc_staged_α:
                        lea              rsi, [rbp + 4448]
                        lea              rdx, [rbp + 4464]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx648_2
.Lx648_2:
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              eax, 99
                                                                                        je    n284_disjunction_β
                                                                                        jmp   n284_disjunction_β
n285_call_proc_staged_β:
                                                                                        jmp   n284_disjunction_β
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n289_disjunction_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "mpress"
#-----------------------------------------------------------------------------------------------------------------------
n287_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx650_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n284_disjunction_af
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n284_disjunction_as
n287_keyword_icon_β:
                                                                                        jmp   n284_disjunction_af
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "&meta"
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rbp + 4528], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   n284_disjunction_as
n288_lit_string_β:
                                                                                        jmp   n284_disjunction_af
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n289_disjunction_α:
                        mov              qword ptr [rbp + 4304], 0
                        mov              qword ptr [rbp + 4312], 0
                        mov              dword ptr [rbp + 4320], 0
                                                                                        jmp   n292_keyword_icon_α
n289_disjunction_as:
                        mov              eax, dword ptr [rbp + 4320]
                        cmp              eax, 0
                                                                                        jne   .Lx653_0
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n290_call_proc_staged_α
.Lx653_0:
                        cmp              eax, 1
                                                                                        jne   .Lx653_1
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n290_call_proc_staged_α
.Lx653_1:
                                                                                        jmp   n290_call_proc_staged_α
n289_disjunction_β:
                        mov              eax, dword ptr [rbp + 4320]
                        cmp              eax, 0
                                                                                        je    n289_disjunction_af
                                                                                        jmp   n289_disjunction_af
n289_disjunction_af:
                        add              dword ptr [rbp + 4320], 1
                        mov              eax, dword ptr [rbp + 4320]
                        cmp              eax, 1
                                                                                        je    n293_lit_string_α
                                                                                        jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_call_proc_staged_α:
                        lea              rsi, [rbp + 4288]
                        lea              rdx, [rbp + 4304]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx655_2
.Lx655_2:
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    n289_disjunction_β
                                                                                        jmp   n289_disjunction_β
n290_call_proc_staged_β:
                                                                                        jmp   n289_disjunction_β
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n294_disjunction_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "mrelease"
#-----------------------------------------------------------------------------------------------------------------------
n292_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx657_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n289_disjunction_af
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n289_disjunction_as
n292_keyword_icon_β:
                                                                                        jmp   n289_disjunction_af
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "&mpress"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 4368], 1
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n289_disjunction_as
n293_lit_string_β:
                                                                                        jmp   n289_disjunction_af
.Lx658_0:
                        .quad            .Lx658_0_s
.Lx658_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n294_disjunction_α:
                        mov              qword ptr [rbp + 4144], 0
                        mov              qword ptr [rbp + 4152], 0
                        mov              dword ptr [rbp + 4160], 0
                                                                                        jmp   n297_keyword_icon_α
n294_disjunction_as:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        jne   .Lx660_0
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n295_call_proc_staged_α
.Lx660_0:
                        cmp              eax, 1
                                                                                        jne   .Lx660_1
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n295_call_proc_staged_α
.Lx660_1:
                                                                                        jmp   n295_call_proc_staged_α
n294_disjunction_β:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        je    n294_disjunction_af
                                                                                        jmp   n294_disjunction_af
n294_disjunction_af:
                        add              dword ptr [rbp + 4160], 1
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 1
                                                                                        je    n298_lit_string_α
                                                                                        jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_proc_staged_α:
                        lea              rsi, [rbp + 4128]
                        lea              rdx, [rbp + 4144]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx662_2
.Lx662_2:
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    n294_disjunction_β
                                                                                        jmp   n294_disjunction_β
n295_call_proc_staged_β:
                                                                                        jmp   n294_disjunction_β
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        mov              qword ptr [rbp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n299_disjunction_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n297_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx664_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n294_disjunction_af
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   n294_disjunction_as
n297_keyword_icon_β:
                                                                                        jmp   n294_disjunction_af
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "&mrelease"
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        mov              qword ptr [rbp + 4208], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n294_disjunction_as
n298_lit_string_β:
                                                                                        jmp   n294_disjunction_af
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n299_disjunction_α:
                        mov              qword ptr [rbp + 3984], 0
                        mov              qword ptr [rbp + 3992], 0
                        mov              dword ptr [rbp + 4000], 0
                                                                                        jmp   n302_keyword_icon_α
n299_disjunction_as:
                        mov              eax, dword ptr [rbp + 4000]
                        cmp              eax, 0
                                                                                        jne   .Lx667_0
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n300_call_proc_staged_α
.Lx667_0:
                        cmp              eax, 1
                                                                                        jne   .Lx667_1
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n300_call_proc_staged_α
.Lx667_1:
                                                                                        jmp   n300_call_proc_staged_α
n299_disjunction_β:
                        mov              eax, dword ptr [rbp + 4000]
                        cmp              eax, 0
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n299_disjunction_af
n299_disjunction_af:
                        add              dword ptr [rbp + 4000], 1
                        mov              eax, dword ptr [rbp + 4000]
                        cmp              eax, 1
                                                                                        je    n303_lit_string_α
                                                                                        jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_proc_staged_α:
                        lea              rsi, [rbp + 3968]
                        lea              rdx, [rbp + 3984]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx669_2
.Lx669_2:
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_β
                                                                                        jmp   n299_disjunction_β
n300_call_proc_staged_β:
                                                                                        jmp   n299_disjunction_β
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n304_disjunction_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n302_keyword_icon_α:
                        mov              qword ptr [rbp + 4016], 0
                        mov              qword ptr [rbp + 4024], 0
                                                                                        jmp   n299_disjunction_as
n302_keyword_icon_β:
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n299_disjunction_as
n303_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n304_disjunction_α:
                        mov              qword ptr [rbp + 3824], 0
                        mov              qword ptr [rbp + 3832], 0
                        mov              dword ptr [rbp + 3840], 0
                                                                                        jmp   n307_keyword_icon_α
n304_disjunction_as:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 0
                                                                                        jne   .Lx674_0
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n305_call_proc_staged_α
.Lx674_0:
                        cmp              eax, 1
                                                                                        jne   .Lx674_1
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n305_call_proc_staged_α
.Lx674_1:
                                                                                        jmp   n305_call_proc_staged_α
n304_disjunction_β:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 0
                                                                                        je    n304_disjunction_af
                                                                                        jmp   n304_disjunction_af
n304_disjunction_af:
                        add              dword ptr [rbp + 3840], 1
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 1
                                                                                        je    n308_lit_string_α
                                                                                        jmp   n306_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_proc_staged_α:
                        lea              rsi, [rbp + 3808]
                        lea              rdx, [rbp + 3824]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx676_2
.Lx676_2:
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n304_disjunction_β
                                                                                        jmp   n304_disjunction_β
n305_call_proc_staged_β:
                                                                                        jmp   n304_disjunction_β
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 3648], 1
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n309_disjunction_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "phi"
#-----------------------------------------------------------------------------------------------------------------------
n307_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx678_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n304_disjunction_af
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n304_disjunction_as
n307_keyword_icon_β:
                                                                                        jmp   n304_disjunction_af
.Lx678_0:
                        .quad            .Lx678_0_s
.Lx678_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 3888], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n304_disjunction_as
n308_lit_string_β:
                                                                                        jmp   n304_disjunction_af
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n309_disjunction_α:
                        mov              qword ptr [rbp + 3664], 0
                        mov              qword ptr [rbp + 3672], 0
                        mov              dword ptr [rbp + 3680], 0
                                                                                        jmp   n312_keyword_icon_α
n309_disjunction_as:
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 0
                                                                                        jne   .Lx681_0
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n310_call_proc_staged_α
.Lx681_0:
                        cmp              eax, 1
                                                                                        jne   .Lx681_1
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n310_call_proc_staged_α
.Lx681_1:
                                                                                        jmp   n310_call_proc_staged_α
n309_disjunction_β:
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 0
                                                                                        je    n309_disjunction_af
                                                                                        jmp   n309_disjunction_af
n309_disjunction_af:
                        add              dword ptr [rbp + 3680], 1
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 1
                                                                                        je    n313_lit_string_α
                                                                                        jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              rsi, [rbp + 3648]
                        lea              rdx, [rbp + 3664]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx683_2
.Lx683_2:
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n309_disjunction_β
                                                                                        jmp   n309_disjunction_β
n310_call_proc_staged_β:
                                                                                        jmp   n309_disjunction_β
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n314_disjunction_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "pi"
#-----------------------------------------------------------------------------------------------------------------------
n312_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx685_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n309_disjunction_af
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   n309_disjunction_as
n312_keyword_icon_β:
                                                                                        jmp   n309_disjunction_af
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "&phi"
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n309_disjunction_as
n313_lit_string_β:
                                                                                        jmp   n309_disjunction_af
.Lx686_0:
                        .quad            .Lx686_0_s
.Lx686_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n314_disjunction_α:
                        mov              qword ptr [rbp + 3504], 0
                        mov              qword ptr [rbp + 3512], 0
                        mov              dword ptr [rbp + 3520], 0
                                                                                        jmp   n317_keyword_icon_α
n314_disjunction_as:
                        mov              eax, dword ptr [rbp + 3520]
                        cmp              eax, 0
                                                                                        jne   .Lx688_0
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n315_call_proc_staged_α
.Lx688_0:
                        cmp              eax, 1
                                                                                        jne   .Lx688_1
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n315_call_proc_staged_α
.Lx688_1:
                                                                                        jmp   n315_call_proc_staged_α
n314_disjunction_β:
                        mov              eax, dword ptr [rbp + 3520]
                        cmp              eax, 0
                                                                                        je    n314_disjunction_af
                                                                                        jmp   n314_disjunction_af
n314_disjunction_af:
                        add              dword ptr [rbp + 3520], 1
                        mov              eax, dword ptr [rbp + 3520]
                        cmp              eax, 1
                                                                                        je    n318_lit_string_α
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_proc_staged_α:
                        lea              rsi, [rbp + 3488]
                        lea              rdx, [rbp + 3504]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx690_2
.Lx690_2:
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    n314_disjunction_β
                                                                                        jmp   n314_disjunction_β
n315_call_proc_staged_β:
                                                                                        jmp   n314_disjunction_β
.Lx690_0:
                        .quad            .Lx690_0_s
.Lx690_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n319_disjunction_α
.Lx691_0:
                        .quad            .Lx691_0_s
.Lx691_0_s:
                        .string          "pos"
#-----------------------------------------------------------------------------------------------------------------------
n317_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx692_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n314_disjunction_af
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n314_disjunction_as
n317_keyword_icon_β:
                                                                                        jmp   n314_disjunction_af
.Lx692_0:
                        .quad            .Lx692_0_s
.Lx692_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n314_disjunction_as
n318_lit_string_β:
                                                                                        jmp   n314_disjunction_af
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n319_disjunction_α:
                        mov              qword ptr [rbp + 3344], 0
                        mov              qword ptr [rbp + 3352], 0
                        mov              dword ptr [rbp + 3360], 0
                                                                                        jmp   n322_keyword_icon_α
n319_disjunction_as:
                        mov              eax, dword ptr [rbp + 3360]
                        cmp              eax, 0
                                                                                        jne   .Lx695_0
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n320_call_proc_staged_α
.Lx695_0:
                        cmp              eax, 1
                                                                                        jne   .Lx695_1
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n320_call_proc_staged_α
.Lx695_1:
                                                                                        jmp   n320_call_proc_staged_α
n319_disjunction_β:
                        mov              eax, dword ptr [rbp + 3360]
                        cmp              eax, 0
                                                                                        je    n319_disjunction_af
                                                                                        jmp   n319_disjunction_af
n319_disjunction_af:
                        add              dword ptr [rbp + 3360], 1
                        mov              eax, dword ptr [rbp + 3360]
                        cmp              eax, 1
                                                                                        je    n323_lit_string_α
                                                                                        jmp   n321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        lea              rsi, [rbp + 3328]
                        lea              rdx, [rbp + 3344]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx697_2
.Lx697_2:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n319_disjunction_β
                                                                                        jmp   n319_disjunction_β
n320_call_proc_staged_β:
                                                                                        jmp   n319_disjunction_β
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx698_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n324_disjunction_α
.Lx698_0:
                        .quad            .Lx698_0_s
.Lx698_0_s:
                        .string          "progname"
#-----------------------------------------------------------------------------------------------------------------------
n322_keyword_icon_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n319_disjunction_as
n322_keyword_icon_β:
                                                                                        jmp   n319_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n319_disjunction_as
n323_lit_string_β:
                                                                                        jmp   n319_disjunction_af
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n324_disjunction_α:
                        mov              qword ptr [rbp + 3184], 0
                        mov              qword ptr [rbp + 3192], 0
                        mov              dword ptr [rbp + 3200], 0
                                                                                        jmp   n327_keyword_icon_α
n324_disjunction_as:
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              eax, 0
                                                                                        jne   .Lx702_0
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n325_call_proc_staged_α
.Lx702_0:
                        cmp              eax, 1
                                                                                        jne   .Lx702_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n325_call_proc_staged_α
.Lx702_1:
                                                                                        jmp   n325_call_proc_staged_α
n324_disjunction_β:
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              eax, 0
                                                                                        je    n324_disjunction_af
                                                                                        jmp   n324_disjunction_af
n324_disjunction_af:
                        add              dword ptr [rbp + 3200], 1
                        mov              eax, dword ptr [rbp + 3200]
                        cmp              eax, 1
                                                                                        je    n328_lit_string_α
                                                                                        jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        lea              rsi, [rbp + 3168]
                        lea              rdx, [rbp + 3184]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx704_2
.Lx704_2:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n324_disjunction_β
                                                                                        jmp   n324_disjunction_β
n325_call_proc_staged_β:
                                                                                        jmp   n324_disjunction_β
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n329_disjunction_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n327_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx706_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n324_disjunction_af
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   n324_disjunction_as
n327_keyword_icon_β:
                                                                                        jmp   n324_disjunction_af
.Lx706_0:
                        .quad            .Lx706_0_s
.Lx706_0_s:
                        .string          "&progname"
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n324_disjunction_as
n328_lit_string_β:
                                                                                        jmp   n324_disjunction_af
.Lx707_0:
                        .quad            .Lx707_0_s
.Lx707_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n329_disjunction_α:
                        mov              qword ptr [rbp + 3024], 0
                        mov              qword ptr [rbp + 3032], 0
                        mov              dword ptr [rbp + 3040], 0
                                                                                        jmp   n332_keyword_icon_α
n329_disjunction_as:
                        mov              eax, dword ptr [rbp + 3040]
                        cmp              eax, 0
                                                                                        jne   .Lx709_0
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n330_call_proc_staged_α
.Lx709_0:
                        cmp              eax, 1
                                                                                        jne   .Lx709_1
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n330_call_proc_staged_α
.Lx709_1:
                                                                                        jmp   n330_call_proc_staged_α
n329_disjunction_β:
                        mov              eax, dword ptr [rbp + 3040]
                        cmp              eax, 0
                                                                                        je    n329_disjunction_af
                                                                                        jmp   n329_disjunction_af
n329_disjunction_af:
                        add              dword ptr [rbp + 3040], 1
                        mov              eax, dword ptr [rbp + 3040]
                        cmp              eax, 1
                                                                                        je    n333_lit_string_α
                                                                                        jmp   n331_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_proc_staged_α:
                        lea              rsi, [rbp + 3008]
                        lea              rdx, [rbp + 3024]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx711_2
.Lx711_2:
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n329_disjunction_β
                                                                                        jmp   n329_disjunction_β
n330_call_proc_staged_β:
                                                                                        jmp   n329_disjunction_β
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n334_disjunction_α
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "rdrag"
#-----------------------------------------------------------------------------------------------------------------------
n332_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx713_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n329_disjunction_af
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n329_disjunction_as
n332_keyword_icon_β:
                                                                                        jmp   n329_disjunction_af
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n329_disjunction_as
n333_lit_string_β:
                                                                                        jmp   n329_disjunction_af
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              dword ptr [rbp + 2880], 0
                                                                                        jmp   n337_keyword_icon_α
n334_disjunction_as:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        jne   .Lx716_0
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n335_call_proc_staged_α
.Lx716_0:
                        cmp              eax, 1
                                                                                        jne   .Lx716_1
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n335_call_proc_staged_α
.Lx716_1:
                                                                                        jmp   n335_call_proc_staged_α
n334_disjunction_β:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        je    n334_disjunction_af
                                                                                        jmp   n334_disjunction_af
n334_disjunction_af:
                        add              dword ptr [rbp + 2880], 1
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 1
                                                                                        je    n338_lit_string_α
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        lea              rsi, [rbp + 2848]
                        lea              rdx, [rbp + 2864]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx718_2
.Lx718_2:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n334_disjunction_β
                                                                                        jmp   n334_disjunction_β
n335_call_proc_staged_β:
                                                                                        jmp   n334_disjunction_β
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n339_disjunction_α
.Lx719_0:
                        .quad            .Lx719_0_s
.Lx719_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n337_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx720_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n334_disjunction_af
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n334_disjunction_as
n337_keyword_icon_β:
                                                                                        jmp   n334_disjunction_af
.Lx720_0:
                        .quad            .Lx720_0_s
.Lx720_0_s:
                        .string          "&rdrag"
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n334_disjunction_as
n338_lit_string_β:
                                                                                        jmp   n334_disjunction_af
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n339_disjunction_α:
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              dword ptr [rbp + 2720], 0
                                                                                        jmp   n342_keyword_icon_gen_α
n339_disjunction_as:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        jne   .Lx723_0
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n340_call_proc_staged_α
.Lx723_0:
                        cmp              eax, 1
                                                                                        jne   .Lx723_1
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n340_call_proc_staged_α
.Lx723_1:
                                                                                        jmp   n340_call_proc_staged_α
n339_disjunction_β:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        je    n342_keyword_icon_gen_β
                                                                                        jmp   n339_disjunction_af
n339_disjunction_af:
                        add              dword ptr [rbp + 2720], 1
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 1
                                                                                        je    n343_lit_string_α
                                                                                        jmp   n341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_proc_staged_α:
                        lea              rsi, [rbp + 2688]
                        lea              rdx, [rbp + 2704]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx725_2
.Lx725_2:
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n339_disjunction_β
                                                                                        jmp   n339_disjunction_β
n340_call_proc_staged_β:
                                                                                        jmp   n339_disjunction_β
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n344_disjunction_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "resize"
#-----------------------------------------------------------------------------------------------------------------------
n342_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 2752], 0
.Lx727_1:
                        mov              rdi, qword ptr [rip + .Lx727_0]
                        mov              rsi, qword ptr [rbp + 2752]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n339_disjunction_af
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        mov              rax, qword ptr [rbp + 2752]
                        add              rax, 1
                        mov              qword ptr [rbp + 2752], rax
                                                                                        jmp   n339_disjunction_as
n342_keyword_icon_gen_β:
                                                                                        jmp   .Lx727_1
.Lx727_0:
                        .quad            .Lx727_0_s
.Lx727_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n339_disjunction_as
n343_lit_string_β:
                                                                                        jmp   n339_disjunction_af
.Lx728_0:
                        .quad            .Lx728_0_s
.Lx728_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n344_disjunction_α:
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              dword ptr [rbp + 2560], 0
                                                                                        jmp   n347_keyword_icon_α
n344_disjunction_as:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 0
                                                                                        jne   .Lx730_0
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n345_call_proc_staged_α
.Lx730_0:
                        cmp              eax, 1
                                                                                        jne   .Lx730_1
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n345_call_proc_staged_α
.Lx730_1:
                                                                                        jmp   n345_call_proc_staged_α
n344_disjunction_β:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 0
                                                                                        je    n344_disjunction_af
                                                                                        jmp   n344_disjunction_af
n344_disjunction_af:
                        add              dword ptr [rbp + 2560], 1
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 1
                                                                                        je    n348_lit_string_α
                                                                                        jmp   n346_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        lea              rsi, [rbp + 2528]
                        lea              rdx, [rbp + 2544]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx732_2
.Lx732_2:
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n344_disjunction_β
                                                                                        jmp   n344_disjunction_β
n345_call_proc_staged_β:
                                                                                        jmp   n344_disjunction_β
.Lx732_0:
                        .quad            .Lx732_0_s
.Lx732_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n349_disjunction_α
.Lx733_0:
                        .quad            .Lx733_0_s
.Lx733_0_s:
                        .string          "row"
#-----------------------------------------------------------------------------------------------------------------------
n347_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx734_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n344_disjunction_af
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n344_disjunction_as
n347_keyword_icon_β:
                                                                                        jmp   n344_disjunction_af
.Lx734_0:
                        .quad            .Lx734_0_s
.Lx734_0_s:
                        .string          "&resize"
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n344_disjunction_as
n348_lit_string_β:
                                                                                        jmp   n344_disjunction_af
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n349_disjunction_α:
                        mov              qword ptr [rbp + 2384], 0
                        mov              qword ptr [rbp + 2392], 0
                        mov              dword ptr [rbp + 2400], 0
                                                                                        jmp   n352_keyword_icon_α
n349_disjunction_as:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        jne   .Lx737_0
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n350_call_proc_staged_α
.Lx737_0:
                        cmp              eax, 1
                                                                                        jne   .Lx737_1
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n350_call_proc_staged_α
.Lx737_1:
                                                                                        jmp   n350_call_proc_staged_α
n349_disjunction_β:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        je    n349_disjunction_af
                                                                                        jmp   n349_disjunction_af
n349_disjunction_af:
                        add              dword ptr [rbp + 2400], 1
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 1
                                                                                        je    n353_lit_string_α
                                                                                        jmp   n351_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_proc_staged_α:
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2384]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx739_2
.Lx739_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n349_disjunction_β
                                                                                        jmp   n349_disjunction_β
n350_call_proc_staged_β:
                                                                                        jmp   n349_disjunction_β
.Lx739_0:
                        .quad            .Lx739_0_s
.Lx739_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n354_disjunction_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "rpress"
#-----------------------------------------------------------------------------------------------------------------------
n352_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx741_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n349_disjunction_af
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n349_disjunction_as
n352_keyword_icon_β:
                                                                                        jmp   n349_disjunction_af
.Lx741_0:
                        .quad            .Lx741_0_s
.Lx741_0_s:
                        .string          "&row"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n349_disjunction_as
n353_lit_string_β:
                                                                                        jmp   n349_disjunction_af
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n354_disjunction_α:
                        mov              qword ptr [rbp + 2224], 0
                        mov              qword ptr [rbp + 2232], 0
                        mov              dword ptr [rbp + 2240], 0
                                                                                        jmp   n357_keyword_icon_α
n354_disjunction_as:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 0
                                                                                        jne   .Lx744_0
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n355_call_proc_staged_α
.Lx744_0:
                        cmp              eax, 1
                                                                                        jne   .Lx744_1
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n355_call_proc_staged_α
.Lx744_1:
                                                                                        jmp   n355_call_proc_staged_α
n354_disjunction_β:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 0
                                                                                        je    n354_disjunction_af
                                                                                        jmp   n354_disjunction_af
n354_disjunction_af:
                        add              dword ptr [rbp + 2240], 1
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 1
                                                                                        je    n358_lit_string_α
                                                                                        jmp   n356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n355_call_proc_staged_α:
                        lea              rsi, [rbp + 2208]
                        lea              rdx, [rbp + 2224]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx746_2
.Lx746_2:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n354_disjunction_β
                                                                                        jmp   n354_disjunction_β
n355_call_proc_staged_β:
                                                                                        jmp   n354_disjunction_β
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n359_disjunction_α
.Lx747_0:
                        .quad            .Lx747_0_s
.Lx747_0_s:
                        .string          "rrelease"
#-----------------------------------------------------------------------------------------------------------------------
n357_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx748_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n354_disjunction_af
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n354_disjunction_as
n357_keyword_icon_β:
                                                                                        jmp   n354_disjunction_af
.Lx748_0:
                        .quad            .Lx748_0_s
.Lx748_0_s:
                        .string          "&rpress"
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n354_disjunction_as
n358_lit_string_β:
                                                                                        jmp   n354_disjunction_af
.Lx749_0:
                        .quad            .Lx749_0_s
.Lx749_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n359_disjunction_α:
                        mov              qword ptr [rbp + 2064], 0
                        mov              qword ptr [rbp + 2072], 0
                        mov              dword ptr [rbp + 2080], 0
                                                                                        jmp   n362_keyword_icon_α
n359_disjunction_as:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 0
                                                                                        jne   .Lx751_0
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n360_call_proc_staged_α
.Lx751_0:
                        cmp              eax, 1
                                                                                        jne   .Lx751_1
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n360_call_proc_staged_α
.Lx751_1:
                                                                                        jmp   n360_call_proc_staged_α
n359_disjunction_β:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 0
                                                                                        je    n359_disjunction_af
                                                                                        jmp   n359_disjunction_af
n359_disjunction_af:
                        add              dword ptr [rbp + 2080], 1
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 1
                                                                                        je    n363_lit_string_α
                                                                                        jmp   n361_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_proc_staged_α:
                        lea              rsi, [rbp + 2048]
                        lea              rdx, [rbp + 2064]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx753_2
.Lx753_2:
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n359_disjunction_β
                                                                                        jmp   n359_disjunction_β
n360_call_proc_staged_β:
                                                                                        jmp   n359_disjunction_β
.Lx753_0:
                        .quad            .Lx753_0_s
.Lx753_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n364_disjunction_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "shift"
#-----------------------------------------------------------------------------------------------------------------------
n362_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx755_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n359_disjunction_af
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n359_disjunction_as
n362_keyword_icon_β:
                                                                                        jmp   n359_disjunction_af
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "&rrelease"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n359_disjunction_as
n363_lit_string_β:
                                                                                        jmp   n359_disjunction_af
.Lx756_0:
                        .quad            .Lx756_0_s
.Lx756_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n364_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n367_keyword_icon_α
n364_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx758_0
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n365_call_proc_staged_α
.Lx758_0:
                        cmp              eax, 1
                                                                                        jne   .Lx758_1
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n365_call_proc_staged_α
.Lx758_1:
                                                                                        jmp   n365_call_proc_staged_α
n364_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        je    n364_disjunction_af
                                                                                        jmp   n364_disjunction_af
n364_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 1
                                                                                        je    n368_lit_string_α
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1904]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx760_2
.Lx760_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n364_disjunction_β
                                                                                        jmp   n364_disjunction_β
n365_call_proc_staged_β:
                                                                                        jmp   n364_disjunction_β
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n369_disjunction_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "source"
#-----------------------------------------------------------------------------------------------------------------------
n367_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx762_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n364_disjunction_af
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n364_disjunction_as
n367_keyword_icon_β:
                                                                                        jmp   n364_disjunction_af
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "&shift"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n364_disjunction_as
n368_lit_string_β:
                                                                                        jmp   n364_disjunction_af
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n369_disjunction_α:
                        mov              qword ptr [rbp + 1744], 0
                        mov              qword ptr [rbp + 1752], 0
                        mov              dword ptr [rbp + 1760], 0
                                                                                        jmp   n372_keyword_icon_α
n369_disjunction_as:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        jne   .Lx765_0
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n370_call_proc_staged_α
.Lx765_0:
                        cmp              eax, 1
                                                                                        jne   .Lx765_1
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n370_call_proc_staged_α
.Lx765_1:
                                                                                        jmp   n370_call_proc_staged_α
n369_disjunction_β:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        je    n369_disjunction_af
                                                                                        jmp   n369_disjunction_af
n369_disjunction_af:
                        add              dword ptr [rbp + 1760], 1
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 1
                                                                                        je    n373_lit_string_α
                                                                                        jmp   n371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1744]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx767_2
.Lx767_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n369_disjunction_β
                                                                                        jmp   n369_disjunction_β
n370_call_proc_staged_β:
                                                                                        jmp   n369_disjunction_β
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n374_disjunction_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n372_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx769_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n369_disjunction_af
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n369_disjunction_as
n372_keyword_icon_β:
                                                                                        jmp   n369_disjunction_af
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          "&source"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n369_disjunction_as
n373_lit_string_β:
                                                                                        jmp   n369_disjunction_af
.Lx770_0:
                        .quad            .Lx770_0_s
.Lx770_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n374_disjunction_α:
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              dword ptr [rbp + 1600], 0
                                                                                        jmp   n377_keyword_icon_gen_α
n374_disjunction_as:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        jne   .Lx772_0
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n375_call_proc_staged_α
.Lx772_0:
                        cmp              eax, 1
                                                                                        jne   .Lx772_1
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n375_call_proc_staged_α
.Lx772_1:
                                                                                        jmp   n375_call_proc_staged_α
n374_disjunction_β:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        je    n377_keyword_icon_gen_β
                                                                                        jmp   n374_disjunction_af
n374_disjunction_af:
                        add              dword ptr [rbp + 1600], 1
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 1
                                                                                        je    n378_lit_string_α
                                                                                        jmp   n376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n375_call_proc_staged_α:
                        lea              rsi, [rbp + 1568]
                        lea              rdx, [rbp + 1584]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx774_2
.Lx774_2:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n374_disjunction_β
                                                                                        jmp   n374_disjunction_β
n375_call_proc_staged_β:
                                                                                        jmp   n374_disjunction_β
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n379_disjunction_α
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "subject"
#-----------------------------------------------------------------------------------------------------------------------
n377_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 1632], 0
.Lx776_1:
                        mov              rdi, qword ptr [rip + .Lx776_0]
                        mov              rsi, qword ptr [rbp + 1632]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n374_disjunction_af
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        mov              rax, qword ptr [rbp + 1632]
                        add              rax, 1
                        mov              qword ptr [rbp + 1632], rax
                                                                                        jmp   n374_disjunction_as
n377_keyword_icon_gen_β:
                                                                                        jmp   .Lx776_1
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n374_disjunction_as
n378_lit_string_β:
                                                                                        jmp   n374_disjunction_af
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n379_disjunction_α:
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              dword ptr [rbp + 1440], 0
                                                                                        jmp   n382_keyword_icon_α
n379_disjunction_as:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        jne   .Lx779_0
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n380_call_proc_staged_α
.Lx779_0:
                        cmp              eax, 1
                                                                                        jne   .Lx779_1
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n380_call_proc_staged_α
.Lx779_1:
                                                                                        jmp   n380_call_proc_staged_α
n379_disjunction_β:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        je    n379_disjunction_af
                                                                                        jmp   n379_disjunction_af
n379_disjunction_af:
                        add              dword ptr [rbp + 1440], 1
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 1
                                                                                        je    n383_lit_string_α
                                                                                        jmp   n381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_proc_staged_α:
                        lea              rsi, [rbp + 1408]
                        lea              rdx, [rbp + 1424]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx781_2
.Lx781_2:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n379_disjunction_β
                                                                                        jmp   n379_disjunction_β
n380_call_proc_staged_β:
                                                                                        jmp   n379_disjunction_β
.Lx781_0:
                        .quad            .Lx781_0_s
.Lx781_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n384_disjunction_α
.Lx782_0:
                        .quad            .Lx782_0_s
.Lx782_0_s:
                        .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n382_keyword_icon_α:
                        call             rt_keyword_subject@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n379_disjunction_as
n382_keyword_icon_β:
                                                                                        jmp   n379_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n379_disjunction_as
n383_lit_string_β:
                                                                                        jmp   n379_disjunction_af
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n384_disjunction_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   n387_keyword_icon_α
n384_disjunction_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx786_0
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n385_call_proc_staged_α
.Lx786_0:
                        cmp              eax, 1
                                                                                        jne   .Lx786_1
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n385_call_proc_staged_α
.Lx786_1:
                                                                                        jmp   n385_call_proc_staged_α
n384_disjunction_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    n384_disjunction_af
                                                                                        jmp   n384_disjunction_af
n384_disjunction_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    n388_lit_string_α
                                                                                        jmp   n386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n385_call_proc_staged_α:
                        lea              rsi, [rbp + 1088]
                        lea              rdx, [rbp + 1104]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx788_2
.Lx788_2:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n384_disjunction_β
                                                                                        jmp   n384_disjunction_β
n385_call_proc_staged_β:
                                                                                        jmp   n384_disjunction_β
.Lx788_0:
                        .quad            .Lx788_0_s
.Lx788_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n390_disjunction_α
.Lx789_0:
                        .quad            .Lx789_0_s
.Lx789_0_s:
                        .string          "trace"
#-----------------------------------------------------------------------------------------------------------------------
n387_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx790_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n384_disjunction_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n391_lit_integer_α
n387_keyword_icon_β:
                                                                                        jmp   n384_disjunction_af
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n384_disjunction_as
n388_lit_string_β:
                                                                                        jmp   n384_disjunction_af
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_proc_staged_α:
                        lea              rsi, [rbp + 1184]
                        call             proc_nmap_dcα
                                                                                        jmp   .Lx793_2
.Lx793_2:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n384_disjunction_af
                                                                                        jmp   n384_disjunction_as
n389_call_proc_staged_β:
                                                                                        jmp   n384_disjunction_af
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "nmap"
#-----------------------------------------------------------------------------------------------------------------------
n390_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n394_keyword_icon_α
n390_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx795_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n392_call_proc_staged_α
.Lx795_0:
                        cmp              eax, 1
                                                                                        jne   .Lx795_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n392_call_proc_staged_α
.Lx795_1:
                                                                                        jmp   n392_call_proc_staged_α
n390_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        je    n390_disjunction_af
                                                                                        jmp   n390_disjunction_af
n390_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 1
                                                                                        je    n395_lit_string_α
                                                                                        jmp   n393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n396_lit_integer_α
.Lx796_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n392_call_proc_staged_α:
                        lea              rsi, [rbp + 928]
                        lea              rdx, [rbp + 944]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx798_2
.Lx798_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n390_disjunction_β
                                                                                        jmp   n390_disjunction_β
n392_call_proc_staged_β:
                                                                                        jmp   n390_disjunction_β
.Lx798_0:
                        .quad            .Lx798_0_s
.Lx798_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n397_disjunction_α
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "ucase"
#-----------------------------------------------------------------------------------------------------------------------
n394_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx800_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n390_disjunction_af
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n390_disjunction_as
n394_keyword_icon_β:
                                                                                        jmp   n390_disjunction_af
.Lx800_0:
                        .quad            .Lx800_0_s
.Lx800_0_s:
                        .string          "&trace"
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n390_disjunction_as
n395_lit_string_β:
                                                                                        jmp   n390_disjunction_af
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n398_call_builtin_icon_α
.Lx802_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n397_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n401_lit_charset_α
n397_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx804_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n399_call_proc_staged_α
.Lx804_0:
                        cmp              eax, 1
                                                                                        jne   .Lx804_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n399_call_proc_staged_α
.Lx804_1:
                                                                                        jmp   n399_call_proc_staged_α
n397_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n397_disjunction_af
                                                                                        jmp   n397_disjunction_af
n397_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n402_lit_string_α
                                                                                        jmp   n400_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn806:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n384_disjunction_af
                                                                                        jmp   n389_call_proc_staged_α
n398_call_builtin_icon_β:
                                                                                        jmp   n384_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx808_2
.Lx808_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n397_disjunction_β
                                                                                        jmp   n397_disjunction_β
n399_call_proc_staged_β:
                                                                                        jmp   n397_disjunction_β
.Lx808_0:
                        .quad            .Lx808_0_s
.Lx808_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n403_disjunction_α
.Lx809_0:
                        .quad            .Lx809_0_s
.Lx809_0_s:
                        .string          "version"
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_charset_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              dword ptr [rbp + 836], -1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n397_disjunction_as
n401_lit_charset_β:
                                                                                        jmp   n397_disjunction_af
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n397_disjunction_as
n402_lit_string_β:
                                                                                        jmp   n397_disjunction_af
.Lx811_0:
                        .quad            .Lx811_0_s
.Lx811_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n403_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n406_keyword_icon_α
n403_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx813_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n404_call_proc_staged_α
.Lx813_0:
                        cmp              eax, 1
                                                                                        jne   .Lx813_1
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n404_call_proc_staged_α
.Lx813_1:
                                                                                        jmp   n404_call_proc_staged_α
n403_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n403_disjunction_af
                                                                                        jmp   n403_disjunction_af
n403_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n407_lit_string_α
                                                                                        jmp   n405_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_call_proc_staged_α:
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 560]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx815_2
.Lx815_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n403_disjunction_β
                                                                                        jmp   n403_disjunction_β
n404_call_proc_staged_β:
                                                                                        jmp   n403_disjunction_β
.Lx815_0:
                        .quad            .Lx815_0_s
.Lx815_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n409_disjunction_α
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "window"
#-----------------------------------------------------------------------------------------------------------------------
n406_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx817_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n403_disjunction_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n410_lit_integer_α
n406_keyword_icon_β:
                                                                                        jmp   n403_disjunction_af
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n403_disjunction_as
n407_lit_string_β:
                                                                                        jmp   n403_disjunction_af
.Lx818_0:
                        .quad            .Lx818_0_s
.Lx818_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn820:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn820]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n403_disjunction_af
                                                                                        jmp   n403_disjunction_as
n408_call_builtin_icon_β:
                                                                                        jmp   n403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n409_disjunction_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0
                                                                                        jmp   n413_keyword_icon_α
n409_disjunction_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        jne   .Lx822_0
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n411_call_proc_staged_α
.Lx822_0:
                        cmp              eax, 1
                                                                                        jne   .Lx822_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n411_call_proc_staged_α
.Lx822_1:
                                                                                        jmp   n411_call_proc_staged_α
n409_disjunction_β:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        je    n409_disjunction_af
                                                                                        jmp   n409_disjunction_af
n409_disjunction_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 1
                                                                                        je    n414_lit_string_α
                                                                                        jmp   n412_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n408_call_builtin_icon_α
.Lx823_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n411_call_proc_staged_α:
                        lea              rsi, [rbp + 384]
                        lea              rdx, [rbp + 400]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx825_2
.Lx825_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n409_disjunction_β
                                                                                        jmp   n409_disjunction_β
n411_call_proc_staged_β:
                                                                                        jmp   n409_disjunction_β
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n415_disjunction_α
.Lx826_0:
                        .quad            .Lx826_0_s
.Lx826_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n413_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx827_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n409_disjunction_af
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n409_disjunction_as
n413_keyword_icon_β:
                                                                                        jmp   n409_disjunction_af
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "&window"
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n409_disjunction_as
n414_lit_string_β:
                                                                                        jmp   n409_disjunction_af
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n415_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n418_keyword_icon_α
n415_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx830_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n416_call_proc_staged_α
.Lx830_0:
                        cmp              eax, 1
                                                                                        jne   .Lx830_1
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n416_call_proc_staged_α
.Lx830_1:
                                                                                        jmp   n416_call_proc_staged_α
n415_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    n415_disjunction_af
                                                                                        jmp   n415_disjunction_af
n415_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    n419_lit_string_α
                                                                                        jmp   n417_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 240]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx832_2
.Lx832_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n415_disjunction_β
                                                                                        jmp   n415_disjunction_β
n416_call_proc_staged_β:
                                                                                        jmp   n415_disjunction_β
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n420_disjunction_α
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n418_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx834_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n415_disjunction_af
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n415_disjunction_as
n418_keyword_icon_β:
                                                                                        jmp   n415_disjunction_af
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          "&x"
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n415_disjunction_as
n419_lit_string_β:
                                                                                        jmp   n415_disjunction_af
.Lx835_0:
                        .quad            .Lx835_0_s
.Lx835_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n420_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n422_keyword_icon_α
n420_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx837_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n421_call_proc_staged_α
.Lx837_0:
                        cmp              eax, 1
                                                                                        jne   .Lx837_1
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n421_call_proc_staged_α
.Lx837_1:
                                                                                        jmp   n421_call_proc_staged_α
n420_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n420_disjunction_af
                                                                                        jmp   n420_disjunction_af
n420_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n423_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 80]
                        call             proc_kw_dcα
                                                                                        jmp   .Lx839_2
.Lx839_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n420_disjunction_β
                                                                                        jmp   n420_disjunction_β
n421_call_proc_staged_β:
                                                                                        jmp   n420_disjunction_β
.Lx839_0:
                        .quad            .Lx839_0_s
.Lx839_0_s:
                        .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n422_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx840_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n420_disjunction_af
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n420_disjunction_as
n422_keyword_icon_β:
                                                                                        jmp   n420_disjunction_af
.Lx840_0:
                        .quad            .Lx840_0_s
.Lx840_0_s:
                        .string          "&y"
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n420_disjunction_as
n423_lit_string_β:
                                                                                        jmp   n420_disjunction_af
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 9488]
                        add              rsp, 9496
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 9488]
                        add              rsp, 9496
                        ret
                        .section         .note.GNU-stack,"",@progbits
