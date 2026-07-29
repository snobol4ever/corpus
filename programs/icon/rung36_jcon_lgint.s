                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_compiler_α
proc_compiler_α:
                        .global          proc_compiler_α
                        .global          proc_compiler_β
                        .global          proc_compiler_γ
                        .global          proc_compiler_ω
                        sub              rsp, 928
                        mov              [rsp + 904], rcx
                        mov              [rsp + 912], rdx
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 896
                        call             rt_jmp_frame_lexprep2@PLT
proc_compiler_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rsp + 832], 6
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n1_assign_α
.Lx37_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 816], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n3_assign_α
.Lx39_0:
                        .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rsp + 800], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n5_assign_α
.Lx41_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rsp + 752], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n7_var_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "    a =  "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn47:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n9_lit_string_α
n8_call_builtin_icon_β:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rsp + 656], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n10_var_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "    b = "
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn52:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rsp + 560], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n13_var_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "    c =  "
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn57:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n15_lit_string_α
n14_call_builtin_icon_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rsp + 400], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n16_var_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "a + b = "
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n19_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n20_var_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "b + c =   "
#-----------------------------------------------------------------------------------------------------------------------
n19_op75_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 7
                                                                                        je    .Lx65_1
                        cmp              eax, 6
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 6
                                                                                        jne   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n21_op75_α
.Lx65_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n21_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op75_α:
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 7
                                                                                        je    .Lx69_1
                        cmp              eax, 6
                                                                                        jne   .Lx69_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx69_0
.Lx69_1:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n24_binop_α
.Lx69_0:
                        lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n25_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rsp + 80], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n26_var_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "c + a =  "
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx73_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx73_0
                        mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 440]
                        add              rax, rcx
                        mov              qword ptr [rsp + 416], 6
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx73_0:
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n18_lit_string_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op75_α:
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 7
                                                                                        je    .Lx75_1
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx75_0
.Lx75_1:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n28_op75_α
.Lx75_0:
                        lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn79:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n18_lit_string_α
                                                                                        jmp   n18_lit_string_α
n27_call_builtin_icon_β:
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op75_α:
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 7
                                                                                        je    .Lx81_1
                        cmp              eax, 6
                                                                                        jne   .Lx81_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 6
                                                                                        jne   .Lx81_0
.Lx81_1:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n31_binop_α
.Lx81_0:
                        lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n31_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n32_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n30_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_compiler_γ
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
                        mov              rax, qword ptr [rsp + 296]
                        mov              rcx, qword ptr [rsp + 280]
                        add              rax, rcx
                        mov              qword ptr [rsp + 256], 6
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx85_0:
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n23_lit_string_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n33_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op75_α:
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 7
                                                                                        je    .Lx87_1
                        cmp              eax, 6
                                                                                        jne   .Lx87_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx87_0
.Lx87_1:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n34_op75_α
.Lx87_0:
                        lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n34_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn89:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n23_lit_string_α
n33_call_builtin_icon_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op75_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 7
                                                                                        je    .Lx91_1
                        cmp              eax, 6
                                                                                        jne   .Lx91_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx91_0
.Lx91_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n35_binop_α
.Lx91_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 112]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n35_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx92_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx92_0
                        mov              rax, qword ptr [rsp + 136]
                        mov              rcx, qword ptr [rsp + 120]
                        add              rax, rcx
                        mov              qword ptr [rsp + 96], 6
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx92_0:
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n30_return_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn94:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n30_return_α
                                                                                        jmp   n30_return_α
n36_call_builtin_icon_β:
                                                                                        jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_compiler_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_compiler_β:
                                                                                        jmp   proc_compiler_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_compiler_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 904]
                        add              rsp, 928
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_compiler_ω:
                        mov              rax, [rsp + 912]
                        add              rsp, 928
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_compiler_dcα:
                        pop              r11
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 896], r11
                        lea              rax, [rip + .Lx95_2]
                        mov              qword ptr [rsp + 904], rax
                        lea              rax, [rip + .Lx95_3]
                        mov              qword ptr [rsp + 912], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 896
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_compiler_α_body
.Lx95_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -928
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx95_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -928
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_boundaries_α
proc_boundaries_α:
                        .global          proc_boundaries_α
                        .global          proc_boundaries_β
                        .global          proc_boundaries_γ
                        .global          proc_boundaries_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              rdi, rsp
                        mov              esi, 1024
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_boundaries_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 976], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n97_lit_integer_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "minint = "
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rsp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n98_assign_α
.Lx138_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n100_lit_string_α
                                                                                        jmp   n100_lit_string_α
n99_call_builtin_icon_β:
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rsp + 800], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n101_lit_integer_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "maxint = "
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rsp + 864], 6
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n102_lit_integer_α
.Lx143_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rsp + 880], 6
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n103_binop_α
.Lx144_0:
                        .quad            64
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rsp + 896], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n106_binop_α
.Lx146_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rsp + 672], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n107_var_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "-minint = "
#-----------------------------------------------------------------------------------------------------------------------
n106_binop_α:
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx148_0
                        mov              rax, qword ptr [rsp + 856]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 832], 6
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n108_assign_α
.Lx148_0:
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n108_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n109_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n109_op75_α:
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx153_1
                        cmp              eax, 6
                                                                                        jne   .Lx153_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx153_0
.Lx153_1:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n112_unop_α
.Lx153_0:
                        lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n112_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rsp + 528], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n113_var_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "abs(min) = "
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n105_lit_string_α
n111_call_builtin_icon_β:
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_unop_α:
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n114_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn161:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n110_lit_string_α
                                                                                        jmp   n110_lit_string_α
n114_call_builtin_icon_β:
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn163:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n116_lit_string_α
                                                                                        jmp   n117_call_builtin_icon_α
n115_call_builtin_icon_β:
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rsp + 384], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n118_var_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "minint * -1 = "
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn166:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n116_lit_string_α
                                                                                        jmp   n116_lit_string_α
n117_call_builtin_icon_β:
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n121_op75_α
.Lx169_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n122_var_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "minint / -1 = "
#-----------------------------------------------------------------------------------------------------------------------
n121_op75_α:
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx172_1
                        cmp              eax, 6
                                                                                        jne   .Lx172_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx172_0
.Lx172_1:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n123_binop_α
.Lx172_0:
                        lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n123_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx175_0
                        mov              rax, qword ptr [rsp + 424]
                        mov              rcx, -1
                        imul             rax, rcx
                        mov              qword ptr [rsp + 400], 6
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n126_call_builtin_icon_α
.Lx175_0:
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n120_lit_string_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n126_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rsp + 304], 6
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n127_op75_α
.Lx176_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rsp + 80], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n128_lit_integer_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "(2^32)^2 = "
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn179:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n120_lit_string_α
                                                                                        jmp   n120_lit_string_α
n126_call_builtin_icon_β:
                                                                                        jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_op75_α:
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx181_1
                        cmp              eax, 6
                                                                                        jne   .Lx181_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx181_0
.Lx181_1:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n129_binop_α
.Lx181_0:
                        lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n129_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n130_lit_integer_α
.Lx182_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n131_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rsp + 144], 6
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n132_binop_α
.Lx184_0:
                        .quad            32
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn186:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n125_lit_string_α
n131_call_builtin_icon_β:
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n134_return_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n135_binop_α
.Lx188_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n134_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_boundaries_γ
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_α:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n134_return_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn192:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n134_return_α
                                                                                        jmp   n134_return_α
n136_call_builtin_icon_β:
                                                                                        jmp   n134_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_boundaries_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_boundaries_β:
                                                                                        jmp   proc_boundaries_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_boundaries_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1064]
                        add              rsp, 1088
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_boundaries_ω:
                        mov              rax, [rsp + 1072]
                        add              rsp, 1088
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_boundaries_dcα:
                        pop              r11
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1056], r11
                        lea              rax, [rip + .Lx193_2]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rax, [rip + .Lx193_3]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rdi, rbp
                        mov              esi, 1024
                        mov              edx, 1056
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_boundaries_α_body
.Lx193_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx193_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact_α
proc_fact_α:
                        .global          proc_fact_α
                        .global          proc_fact_β
                        .global          proc_fact_γ
                        .global          proc_fact_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n195_assign_α
.Lx209_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n199_var_α
.Lx213_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n200_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n202_to_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n203_var_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "! = "
#-----------------------------------------------------------------------------------------------------------------------
n201_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_fact_γ
#-----------------------------------------------------------------------------------------------------------------------
n202_to_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 272], 6
                        mov              qword ptr [rbp + 280], rax
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 256], rax
.Lx221_0:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        jg    n198_var_α
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n204_op75_α
n202_to_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx221_0
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n205_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n204_op75_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 7
                                                                                        je    .Lx225_1
                        cmp              eax, 6
                                                                                        jne   .Lx225_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx225_0
.Lx225_1:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n206_op75_α
.Lx225_0:
                        lea              rdi, [rbp + 320]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n206_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn227:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 48]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n201_return_α
                                                                                        jmp   n201_return_α
n205_call_builtin_icon_β:
                                                                                        jmp   n201_return_α
#-----------------------------------------------------------------------------------------------------------------------
n206_op75_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 7
                                                                                        je    .Lx229_1
                        cmp              eax, 6
                                                                                        jne   .Lx229_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx229_0
.Lx229_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n207_binop_α
.Lx229_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n207_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n207_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx230_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx230_0
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, qword ptr [rbp + 200]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n208_assign_α
.Lx230_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n198_var_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n208_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n202_to_β
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_β:
                                                                                        jmp   proc_fact_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 344]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_dcα:
                        pop              r11
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 336], r11
                        lea              rax, [rip + .Lx232_2]
                        mov              qword ptr [rbp + 344], rax
                        lea              rax, [rip + .Lx232_3]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 320
                        mov              edx, 336
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_fact_α_body
.Lx232_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -368
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx232_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -368
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fib_α
proc_fib_α:
                        .global          proc_fib_α
                        .global          proc_fib_β
                        .global          proc_fib_γ
                        .global          proc_fib_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_fib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n234_assign_α
.Lx260_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n235_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n236_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n237_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n238_var_α
.Lx264_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n239_to_α
#-----------------------------------------------------------------------------------------------------------------------
n239_to_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 256], 6
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 224], rax
.Lx268_0:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 264]
                        cmp              rax, rcx
                                                                                        jg    n240_lit_string_α
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n241_assign_α
n239_to_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx268_0
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n242_var_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "F("
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n243_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n244_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_bound_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n246_var_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n247_var_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n245_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_fib_γ
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n250_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n251_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n252_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn286:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rbp + 48]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n245_return_α
                                                                                        jmp   n245_return_α
n250_call_builtin_icon_β:
                                                                                        jmp   n245_return_α
#-----------------------------------------------------------------------------------------------------------------------
n251_op75_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 7
                                                                                        je    .Lx288_1
                        cmp              eax, 6
                                                                                        jne   .Lx288_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx288_0
.Lx288_1:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n254_op75_α
.Lx288_0:
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n254_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n255_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n254_op75_α:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 7
                                                                                        je    .Lx293_1
                        cmp              eax, 6
                                                                                        jne   .Lx293_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 6
                                                                                        jne   .Lx293_0
.Lx293_1:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n257_binop_α
.Lx293_0:
                        lea              rdi, [rbp + 544]
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n257_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n258_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n256_unmark_α:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n239_to_β
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx297_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx297_0
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 408]
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 6
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n259_assign_α
.Lx297_0:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n249_var_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n259_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n258_conjunction_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n256_unmark_α
n258_conjunction_β:
                                                                                        jmp   n256_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_β:
                                                                                        jmp   proc_fib_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 584]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fib_dcα:
                        pop              r11
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 576], r11
                        lea              rax, [rip + .Lx300_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx300_3]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 512
                        mov              edx, 576
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_fib_α_body
.Lx300_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx300_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_power_α
proc_power_α:
                        .global          proc_power_α
                        .global          proc_power_β
                        .global          proc_power_γ
                        .global          proc_power_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_power_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rsp + 176], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n304_var_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n303_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_power_γ
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n306_var_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n307_var_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n308_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n308_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx324_1
                        cmp              eax, 6
                                                                                        jne   .Lx324_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx324_0
.Lx324_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n309_op75_α
.Lx324_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n309_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n309_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx326_1
                        cmp              eax, 6
                                                                                        jne   .Lx326_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx326_0
.Lx326_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n310_binop_α
.Lx326_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n310_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n310_binop_α:
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n303_return_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n311_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn329:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n303_return_α
                                                                                        jmp   n303_return_α
n311_call_builtin_icon_β:
                                                                                        jmp   n303_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_power_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_power_β:
                                                                                        jmp   proc_power_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_power_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 312]
                        add              rsp, 336
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_power_ω:
                        mov              rax, [rsp + 320]
                        add              rsp, 336
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_power_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 304], r11
                        lea              rax, [rip + .Lx330_2]
                        mov              qword ptr [rsp + 312], rax
                        lea              rax, [rip + .Lx330_3]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 304
                        mov              edx, 304
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_power_α_body
.Lx330_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx330_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_impower_α
proc_impower_α:
                        .global          proc_impower_α
                        .global          proc_impower_β
                        .global          proc_impower_γ
                        .global          proc_impower_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              rdi, rsp
                        mov              esi, 352
                        mov              edx, 352
                        call             rt_jmp_frame_lexprep2@PLT
proc_impower_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rsp + 176], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n334_var_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n333_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_impower_γ
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n335_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n336_var_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n337_var_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n338_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n338_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx355_1
                        cmp              eax, 6
                                                                                        jne   .Lx355_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx355_0
.Lx355_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n339_op75_α
.Lx355_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 304]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n339_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n339_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx357_1
                        cmp              eax, 6
                                                                                        jne   .Lx357_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx357_0
.Lx357_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n340_binop_α
.Lx357_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n340_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n340_binop_α:
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n333_return_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n341_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn360:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n333_return_α
                                                                                        jmp   n342_call_builtin_icon_α
n341_call_builtin_icon_β:
                                                                                        jmp   n333_return_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn362:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n333_return_α
                                                                                        jmp   n333_return_α
n342_call_builtin_icon_β:
                                                                                        jmp   n333_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_impower_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_impower_β:
                                                                                        jmp   proc_impower_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_impower_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 360]
                        add              rsp, 384
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_impower_ω:
                        mov              rax, [rsp + 368]
                        add              rsp, 384
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_impower_dcα:
                        pop              r11
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 352], r11
                        lea              rax, [rip + .Lx363_2]
                        mov              qword ptr [rsp + 360], rax
                        lea              rax, [rip + .Lx363_3]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 352
                        mov              edx, 352
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_impower_α_body
.Lx363_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -384
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx363_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -384
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_minpower_α
proc_minpower_α:
                        .global          proc_minpower_α
                        .global          proc_minpower_β
                        .global          proc_minpower_γ
                        .global          proc_minpower_ω
                        sub              rsp, 784
                        mov              [rsp + 760], rcx
                        mov              [rsp + 768], rdx
                        mov              [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 752
                        call             rt_jmp_frame_lexprep2@PLT
proc_minpower_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n365_lit_integer_α
.Lx392_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n366_binop_α
.Lx393_0:
                        .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n366_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n368_var_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n369_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n370_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n371_lit_integer_α
.Lx399_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n372_call_builtin_icon_α
.Lx400_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n373_to_α
.Lx401_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn403:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rbp + 160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_minpower_ω
                                                                                        jmp   n374_lit_string_α
n372_call_builtin_icon_β:
                                                                                        jmp   proc_minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
n373_to_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 704], 6
                        mov              qword ptr [rbp + 712], rax
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 720], 6
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 688], rax
.Lx405_0:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jg    n368_var_α
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n375_assign_α
n373_to_β:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx405_0
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n376_var_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          " ^"
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n377_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx411_1
                        cmp              eax, 6
                                                                                        jne   .Lx411_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 6
                                                                                        jne   .Lx411_0
.Lx411_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n379_op75_α
.Lx411_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 656]
                        lea              rdx, [rbp + 624]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n379_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n380_call_builtin_icon_α
.Lx412_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n379_op75_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 7
                                                                                        je    .Lx414_1
                        cmp              eax, 6
                                                                                        jne   .Lx414_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx414_0
.Lx414_1:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n381_binop_α
.Lx414_0:
                        lea              rdi, [rbp + 656]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n381_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn416:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    proc_minpower_ω
                                                                                        jmp   n382_lit_string_α
n380_call_builtin_icon_β:
                                                                                        jmp   proc_minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_binop_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n368_var_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n383_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n384_var_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          " ="
#-----------------------------------------------------------------------------------------------------------------------
n383_binop_test_α:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 100
                                                                                        je    .Lx419_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 100
                                                                                        je    .Lx419_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx419_2
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx419_2
.Lx419_1:
                        mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jg    n373_to_β
                        mov              rcx, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rcx
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rcx
                                                                                        jmp   n368_var_α
.Lx419_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 6
                        lea              r9, [rbp + 528]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx419_1
                        cmp              eax, 1
                                                                                        je    n373_to_β
                                                                                        jmp   n368_var_α
.Lx419_2:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n373_to_β
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n386_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n386_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx425_1
                        cmp              eax, 6
                                                                                        jne   .Lx425_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx425_0
.Lx425_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n387_op75_α
.Lx425_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 464]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n387_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op75_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx427_1
                        cmp              eax, 6
                                                                                        jne   .Lx427_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx427_0
.Lx427_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n388_binop_α
.Lx427_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n388_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n388_binop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    proc_minpower_ω
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n389_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n390_call_builtin_icon_α
.Lx429_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn431:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_minpower_ω
                                                                                        jmp   n391_call_builtin_icon_α
n390_call_builtin_icon_β:
                                                                                        jmp   proc_minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn433:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rbp + 48]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_minpower_ω
                                                                                        jmp   proc_minpower_ω
n391_call_builtin_icon_β:
                                                                                        jmp   proc_minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_minpower_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_minpower_β:
                                                                                        jmp   proc_minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_minpower_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 760]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_minpower_ω:
                        mov              rax, [rbp + 768]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_minpower_dcα:
                        pop              r11
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 752], r11
                        lea              rax, [rip + .Lx434_2]
                        mov              qword ptr [rbp + 760], rax
                        lea              rax, [rip + .Lx434_3]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 736
                        mov              edx, 752
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_minpower_α_body
.Lx434_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx434_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bigexp_α
proc_bigexp_α:
                        .global          proc_bigexp_α
                        .global          proc_bigexp_β
                        .global          proc_bigexp_γ
                        .global          proc_bigexp_ω
                        sub              rsp, 880
                        mov              [rsp + 856], rcx
                        mov              [rsp + 864], rdx
                        mov              [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 832
                        mov              edx, 848
                        call             rt_jmp_frame_lexprep2@PLT
proc_bigexp_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n436_keyword_assign_α
.Lx470_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n436_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n437_lit_string_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n438_var_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "       v = "
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n439_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn476:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n440_disjunction_α
                                                                                        jmp   n440_disjunction_α
n439_call_builtin_icon_β:
                                                                                        jmp   n440_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n440_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n442_lit_integer_α
n440_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx478_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n441_assign_α
.Lx478_0:
                        cmp              eax, 1
                                                                                        jne   .Lx478_1
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n441_assign_α
.Lx478_1:
                                                                                        jmp   n441_assign_α
n440_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n443_to_β
                                                                                        jmp   n445_to_β
n440_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n444_lit_integer_α
                                                                                        jmp   n467_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n447_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n448_lit_integer_α
n442_lit_integer_β:
                                                                                        jmp   n440_disjunction_af
.Lx480_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n443_to_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lx482_0:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx
                                                                                        jg    n440_disjunction_af
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n440_disjunction_as
n443_to_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx482_0
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n449_lit_integer_α
n444_lit_integer_β:
                                                                                        jmp   n440_disjunction_af
.Lx483_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n445_to_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 256], 6
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 224], rax
.Lx485_0:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 264]
                        cmp              rax, rcx
                                                                                        jg    n440_disjunction_af
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n450_lit_real_α
n445_to_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx485_0
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n440_disjunction_af
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n440_disjunction_as
n446_binop_β:
                                                                                        jmp   n440_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n447_bound_α:
                        mov              qword ptr [rbp + 288], rsp
                                                                                        jmp   n451_var_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n443_to_α
.Lx489_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n445_to_α
.Lx490_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_real_α:
                        mov              qword ptr [rbp + 272], 7
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n452_op75_α
.Lx491_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n453_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n452_op75_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 7
                                                                                        je    .Lx495_1
                        cmp              eax, 6
                                                                                        jne   .Lx495_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx495_0
.Lx495_1:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n446_binop_α
.Lx495_0:
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n455_call_builtin_icon_α
.Lx496_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n454_unmark_α:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n440_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn500:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n454_unmark_α
                                                                                        jmp   n456_lit_string_α
n455_call_builtin_icon_β:
                                                                                        jmp   n454_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n457_disjunction_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          " ^ v = "
#-----------------------------------------------------------------------------------------------------------------------
n457_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n459_var_α
n457_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx503_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n458_call_builtin_icon_α
.Lx503_0:
                        cmp              eax, 1
                                                                                        jne   .Lx503_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n458_call_builtin_icon_α
.Lx503_1:
                                                                                        jmp   n458_call_builtin_icon_α
n457_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n457_disjunction_af
                                                                                        jmp   n457_disjunction_af
n457_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n460_lit_string_α
                                                                                        jmp   n454_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn505:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rbp + 352]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n457_disjunction_β
                                                                                        jmp   n454_unmark_α
n458_call_builtin_icon_β:
                                                                                        jmp   n457_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n463_var_α
n459_var_β:
                                                                                        jmp   n457_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n464_keyword_icon_α
n460_lit_string_β:
                                                                                        jmp   n457_disjunction_af
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "error "
#-----------------------------------------------------------------------------------------------------------------------
n461_binop_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n457_disjunction_af
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n457_disjunction_as
n461_binop_β:
                                                                                        jmp   n457_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n462_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n457_disjunction_as
n462_binop_β:
                                                                                        jmp   n457_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n465_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n464_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx513_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n457_disjunction_af
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n462_binop_α
n464_keyword_icon_β:
                                                                                        jmp   n457_disjunction_af
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n465_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx515_1
                        cmp              eax, 6
                                                                                        jne   .Lx515_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx515_0
.Lx515_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n466_op75_α
.Lx515_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n466_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n466_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx517_1
                        cmp              eax, 6
                                                                                        jne   .Lx517_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx517_0
.Lx517_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n461_binop_α
.Lx517_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n461_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n468_keyword_assign_α
.Lx518_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n468_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n469_return_α
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n469_return_α
#-----------------------------------------------------------------------------------------------------------------------
n469_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_bigexp_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_bigexp_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_bigexp_β:
                                                                                        jmp   proc_bigexp_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bigexp_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 856]
                        lea              rsp, [rbp + 880]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_bigexp_ω:
                        mov              rax, [rbp + 864]
                        lea              rsp, [rbp + 880]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_bigexp_dcα:
                        pop              r11
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 848], r11
                        lea              rax, [rip + .Lx521_2]
                        mov              qword ptr [rbp + 856], rax
                        lea              rax, [rip + .Lx521_3]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 832
                        mov              edx, 848
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_bigexp_α_body
.Lx521_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -880
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx521_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -880
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_mersenne_α
proc_mersenne_α:
                        .global          proc_mersenne_α
                        .global          proc_mersenne_β
                        .global          proc_mersenne_γ
                        .global          proc_mersenne_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_mersenne_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n523_var_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "M("
#-----------------------------------------------------------------------------------------------------------------------
n523_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n526_lit_integer_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n525_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_mersenne_γ
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n527_var_α
.Lx539_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n527_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n528_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n528_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx543_1
                        cmp              eax, 6
                                                                                        jne   .Lx543_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx543_0
.Lx543_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n529_binop_α
.Lx543_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n529_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n529_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n525_return_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n530_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n531_op75_α
.Lx545_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n531_op75_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 7
                                                                                        je    .Lx547_1
                        cmp              eax, 6
                                                                                        jne   .Lx547_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx547_0
.Lx547_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n532_binop_α
.Lx547_0:
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n532_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n532_binop_α:
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx548_0
                        mov              rax, qword ptr [rsp + 200]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 176], 6
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n533_call_builtin_icon_α
.Lx548_0:
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n525_return_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n533_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn550:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn550]
                        lea              rsi, [rsp + 48]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n525_return_α
                                                                                        jmp   n525_return_α
n533_call_builtin_icon_β:
                                                                                        jmp   n525_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_mersenne_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_mersenne_β:
                                                                                        jmp   proc_mersenne_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_mersenne_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 296]
                        add              rsp, 320
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_mersenne_ω:
                        mov              rax, [rsp + 304]
                        add              rsp, 320
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_mersenne_dcα:
                        pop              r11
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 288], r11
                        lea              rax, [rip + .Lx551_2]
                        mov              qword ptr [rsp + 296], rax
                        lea              rax, [rip + .Lx551_3]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 288
                        mov              edx, 288
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_mersenne_α_body
.Lx551_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx551_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_perfect_α
proc_perfect_α:
                        .global          proc_perfect_α
                        .global          proc_perfect_β
                        .global          proc_perfect_γ
                        .global          proc_perfect_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_perfect_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n553_var_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "P("
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n554_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n556_lit_integer_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n555_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_perfect_γ
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n557_var_α
.Lx579_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n557_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n558_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n558_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx583_1
                        cmp              eax, 6
                                                                                        jne   .Lx583_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx583_0
.Lx583_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n559_binop_α
.Lx583_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n559_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n559_binop_α:
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n555_return_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n560_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_integer_α:
                        mov              qword ptr [rsp + 320], 6
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n561_op75_α
.Lx585_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n561_op75_α:
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 7
                                                                                        je    .Lx587_1
                        cmp              eax, 6
                                                                                        jne   .Lx587_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx587_0
.Lx587_1:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n562_binop_α
.Lx587_0:
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n562_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n562_binop_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx588_0
                        mov              rax, qword ptr [rsp + 248]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 224], 6
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n563_lit_integer_α
.Lx588_0:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n555_return_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n563_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_integer_α:
                        mov              qword ptr [rsp + 368], 6
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n564_var_α
.Lx589_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n565_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_integer_α:
                        mov              qword ptr [rsp + 432], 6
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n566_op75_α
.Lx592_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n566_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx594_1
                        cmp              eax, 6
                                                                                        jne   .Lx594_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx594_0
.Lx594_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n567_binop_α
.Lx594_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n567_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n567_binop_α:
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx595_0
                        mov              rax, qword ptr [rsp + 408]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 384], 6
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n568_op75_α
.Lx595_0:
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n555_return_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n568_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n568_op75_α:
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 7
                                                                                        je    .Lx597_1
                        cmp              eax, 6
                                                                                        jne   .Lx597_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx597_0
.Lx597_1:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n569_binop_α
.Lx597_0:
                        lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n569_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n569_binop_α:
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n555_return_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n570_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n570_op75_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 7
                                                                                        je    .Lx600_1
                        cmp              eax, 6
                                                                                        jne   .Lx600_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx600_0
.Lx600_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n571_op75_α
.Lx600_0:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n571_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n571_op75_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx602_1
                        cmp              eax, 6
                                                                                        jne   .Lx602_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx602_0
.Lx602_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n572_binop_α
.Lx602_0:
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n572_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n572_binop_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx603_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx603_0
                        mov              rax, qword ptr [rsp + 216]
                        mov              rcx, qword ptr [rsp + 200]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 176], 6
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n573_call_builtin_icon_α
.Lx603_0:
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n555_return_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n573_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn605:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn605]
                        lea              rsi, [rsp + 48]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n555_return_α
                                                                                        jmp   n555_return_α
n573_call_builtin_icon_β:
                                                                                        jmp   n555_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_β:
                                                                                        jmp   proc_perfect_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 456]
                        add              rsp, 480
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_ω:
                        mov              rax, [rsp + 464]
                        add              rsp, 480
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_perfect_dcα:
                        pop              r11
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 448], r11
                        lea              rax, [rip + .Lx606_2]
                        mov              qword ptr [rsp + 456], rax
                        lea              rax, [rip + .Lx606_3]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 448
                        mov              edx, 448
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_perfect_α_body
.Lx606_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx606_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tmul_α
proc_tmul_α:
                        .global          proc_tmul_α
                        .global          proc_tmul_β
                        .global          proc_tmul_γ
                        .global          proc_tmul_ω
                        sub              rsp, 1600
                        mov              [rsp + 1576], rcx
                        mov              [rsp + 1584], rdx
                        mov              [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1472
                        mov              edx, 1568
                        call             rt_jmp_frame_lexprep2@PLT
proc_tmul_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n608_assign_α
.Lx680_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n608_assign_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n609_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n610_assign_α
.Lx682_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n610_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n612_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_real_α:
                        mov              qword ptr [rbp + 256], 7
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n614_binop_test_α
.Lx686_0:
                        .quad            4981134201117475473
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n615_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n614_binop_test_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n613_var_α
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n617_var_α
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n618_var_α
.Lx690_0:
                        .quad            .Lx690_0_s
.Lx690_0_s:
                        .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n616_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_tmul_γ
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n619_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n618_var_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n621_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n622_op75_α
.Lx696_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n620_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n623_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n625_var_α
.Lx699_0:
                        .quad            .Lx699_0_s
.Lx699_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n622_op75_α:
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 7
                                                                                        je    .Lx701_1
                        cmp              eax, 6
                                                                                        jne   .Lx701_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx701_0
.Lx701_1:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n626_binop_α
.Lx701_0:
                        lea              rdi, [rbp + 1472]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1392]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n626_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n623_assign_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n624_var_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n627_var_α
#-----------------------------------------------------------------------------------------------------------------------
n625_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n629_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n626_binop_α:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 6
                                                                                        jne   .Lx707_0
                        mov              rax, qword ptr [rbp + 1400]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1376], 6
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n630_assign_α
.Lx707_0:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n620_var_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n630_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n631_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n628_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n632_var_α
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn713:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn713]
                        lea              rsi, [rbp + 48]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n616_return_α
                                                                                        jmp   n616_return_α
n629_call_builtin_icon_β:
                                                                                        jmp   n616_return_α
#-----------------------------------------------------------------------------------------------------------------------
n630_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n620_var_α
#-----------------------------------------------------------------------------------------------------------------------
n631_op75_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 7
                                                                                        je    .Lx716_1
                        cmp              eax, 6
                                                                                        jne   .Lx716_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx716_0
.Lx716_1:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n634_op75_α
.Lx716_0:
                        lea              rdi, [rbp + 1488]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n634_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n632_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n635_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n633_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n636_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n634_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx722_1
                        cmp              eax, 6
                                                                                        jne   .Lx722_0
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 6
                                                                                        jne   .Lx722_0
.Lx722_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n638_binop_α
.Lx722_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1296]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n638_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n635_op75_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 7
                                                                                        je    .Lx724_1
                        cmp              eax, 6
                                                                                        jne   .Lx724_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 6
                                                                                        jne   .Lx724_0
.Lx724_1:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n639_op75_α
.Lx724_0:
                        lea              rdi, [rbp + 1488]
                        lea              rsi, [rbp + 1552]
                        lea              rdx, [rbp + 1232]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n639_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n636_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn726:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn726]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n637_var_α
                                                                                        jmp   n640_var_α
n636_call_builtin_icon_β:
                                                                                        jmp   n637_var_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n641_var_α
#-----------------------------------------------------------------------------------------------------------------------
n638_binop_α:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx729_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx729_0
                        mov              rax, qword ptr [rbp + 1320]
                        mov              rcx, qword ptr [rbp + 1304]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n643_assign_α
.Lx729_0:
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n628_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n643_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n639_op75_α:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 7
                                                                                        je    .Lx731_1
                        cmp              eax, 6
                                                                                        jne   .Lx731_0
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 6
                                                                                        jne   .Lx731_0
.Lx731_1:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n644_binop_α
.Lx731_0:
                        lea              rdi, [rbp + 1552]
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1216]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n644_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n645_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n641_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n646_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n642_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n648_var_α
n642_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx737_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n647_conjunction_α
.Lx737_0:
                                                                                        jmp   n647_conjunction_α
n642_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n611_var_α
n642_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n628_var_α
#-----------------------------------------------------------------------------------------------------------------------
n644_binop_α:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n633_var_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n650_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n645_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn741:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n637_var_α
                                                                                        jmp   n651_op75_α
n645_call_builtin_icon_β:
                                                                                        jmp   n637_var_α
#-----------------------------------------------------------------------------------------------------------------------
n646_op75_α:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 7
                                                                                        je    .Lx743_1
                        cmp              eax, 6
                                                                                        jne   .Lx743_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx743_0
.Lx743_1:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n652_op75_α
.Lx743_0:
                        lea              rdi, [rbp + 1520]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n652_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n647_conjunction_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n611_var_α
n647_conjunction_β:
                                                                                        jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n648_var_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n653_var_α
n648_var_β:
                                                                                        jmp   n654_var_α
#-----------------------------------------------------------------------------------------------------------------------
n649_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn748:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn748]
                        lea              rsi, [rbp + 336]
                        mov              edx, 11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n611_var_α
                                                                                        jmp   n642_disjunction_as
n649_call_builtin_icon_β:
                                                                                        jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n633_var_α
#-----------------------------------------------------------------------------------------------------------------------
n651_op75_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 7
                                                                                        je    .Lx751_1
                        cmp              eax, 6
                                                                                        jne   .Lx751_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 6
                                                                                        jne   .Lx751_0
.Lx751_1:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n655_op75_α
.Lx751_0:
                        lea              rdi, [rbp + 1072]
                        lea              rsi, [rbp + 1136]
                        lea              rdx, [rbp + 1056]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n655_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n652_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx753_1
                        cmp              eax, 6
                                                                                        jne   .Lx753_0
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 6
                                                                                        jne   .Lx753_0
.Lx753_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n656_binop_α
.Lx753_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 1520]
                        lea              rdx, [rbp + 944]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n656_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n653_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n657_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                                                                                        jmp   n658_var_α
n654_var_β:
                                                                                        jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n655_op75_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 7
                                                                                        je    .Lx758_1
                        cmp              eax, 6
                                                                                        jne   .Lx758_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx758_0
.Lx758_1:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n659_binop_α
.Lx758_0:
                        lea              rdi, [rbp + 1136]
                        lea              rsi, [rbp + 1072]
                        lea              rdx, [rbp + 1040]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n659_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n656_binop_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n642_disjunction_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n660_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n657_binop_test_α:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 100
                                                                                        je    .Lx760_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx760_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 6
                                                                                        jne   .Lx760_2
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx760_2
.Lx760_1:
                        mov              rax, qword ptr [rbp + 1512]
                        mov              rcx, qword ptr [rbp + 24]
                        cmp              rax, rcx
                                                                                        jne   n654_var_α
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rcx
                        mov              rcx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rcx
                                                                                        jmp   n661_var_α
.Lx760_0:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 9
                        lea              r9, [rbp + 784]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx760_1
                        cmp              eax, 1
                                                                                        je    n654_var_α
                                                                                        jmp   n661_var_α
.Lx760_2:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n654_var_α
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n661_var_α
#-----------------------------------------------------------------------------------------------------------------------
n658_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n662_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n659_binop_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n637_var_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n663_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n664_op75_α
.Lx764_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n661_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n665_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n666_var_α
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n663_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n637_var_α
#-----------------------------------------------------------------------------------------------------------------------
n664_op75_α:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 7
                                                                                        je    .Lx770_1
                        cmp              eax, 6
                                                                                        jne   .Lx770_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx770_0
.Lx770_1:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n667_binop_α
.Lx770_0:
                        lea              rdi, [rbp + 928]
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 912]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n667_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_real_α:
                        mov              qword ptr [rbp + 768], 7
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n668_binop_test_α
.Lx771_0:
                        .quad            4397347889687374747
#-----------------------------------------------------------------------------------------------------------------------
n666_var_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n669_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n667_binop_α:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 6
                                                                                        jne   .Lx774_0
                        mov              rax, qword ptr [rbp + 920]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 896], 6
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n670_call_builtin_icon_α
.Lx774_0:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n642_disjunction_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n670_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n668_binop_test_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n654_var_α
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n671_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n672_var_α
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n670_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn778:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn778]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n642_disjunction_α
                                                                                        jmp   n673_assign_α
n670_call_builtin_icon_β:
                                                                                        jmp   n642_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n671_conjunction_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n642_disjunction_af
n671_conjunction_β:
                                                                                        jmp   n654_var_α
#-----------------------------------------------------------------------------------------------------------------------
n672_var_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n673_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n642_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n675_var_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "\td="
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n676_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n677_var_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "\te="
#-----------------------------------------------------------------------------------------------------------------------
n677_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n678_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n679_var_α
.Lx789_0:
                        .quad            .Lx789_0_s
.Lx789_0_s:
                        .string          "\terr="
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n649_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_tmul_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tmul_β:
                                                                                        jmp   proc_tmul_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tmul_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1576]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tmul_ω:
                        mov              rax, [rbp + 1584]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tmul_dcα:
                        pop              r11
                        sub              rsp, 1616
                        mov              qword ptr [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1568], r11
                        lea              rax, [rip + .Lx792_2]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rax, [rip + .Lx792_3]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1472
                        mov              edx, 1568
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tmul_α_body
.Lx792_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1600
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx792_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1600
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_conv_α
proc_conv_α:
                        .global          proc_conv_α
                        .global          proc_conv_β
                        .global          proc_conv_γ
                        .global          proc_conv_ω
                        sub              rsp, 1472
                        mov              [rsp + 1448], rcx
                        mov              [rsp + 1456], rdx
                        mov              [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1440
                        call             rt_jmp_frame_lexprep2@PLT
proc_conv_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n793_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n794_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n794_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn853:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn853]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n795_var_α
                                                                                        jmp   n796_assign_α
n794_call_builtin_icon_β:
                                                                                        jmp   n795_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n797_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n796_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n795_var_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn858:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn858]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n798_disjunction_α
                                                                                        jmp   n799_assign_α
n797_call_builtin_icon_β:
                                                                                        jmp   n798_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n798_disjunction_α:
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0
                                                                                        jmp   n801_var_α
n798_disjunction_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        jne   .Lx860_0
                                                                                        jmp   n800_var_α
.Lx860_0:
                                                                                        jmp   n800_var_α
n798_disjunction_β:
                        mov              eax, dword ptr [rbp + 928]
                                                                                        jmp   n800_var_α
n798_disjunction_af:
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                                                                                        jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n799_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n798_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n800_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n803_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n805_var_α
n801_var_β:
                                                                                        jmp   n798_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n802_conjunction_α:
                                                                                        jmp   n798_disjunction_as
n802_conjunction_β:
                                                                                        jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn868:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn868]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n804_var_α
                                                                                        jmp   n806_assign_α
n803_call_builtin_icon_β:
                                                                                        jmp   n804_var_α
#-----------------------------------------------------------------------------------------------------------------------
n804_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n807_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n809_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n806_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n804_var_α
#-----------------------------------------------------------------------------------------------------------------------
n807_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn875:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn875]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n808_var_α
                                                                                        jmp   n810_assign_α
n807_call_builtin_icon_β:
                                                                                        jmp   n808_var_α
#-----------------------------------------------------------------------------------------------------------------------
n808_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n811_var_α
#-----------------------------------------------------------------------------------------------------------------------
n809_binop_test_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 100
                                                                                        je    .Lx878_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx878_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx878_2
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx878_2
.Lx878_1:
                        mov              rax, qword ptr [rbp + 1384]
                        mov              rcx, qword ptr [rbp + 24]
                        cmp              rax, rcx
                                                                                        je    n798_disjunction_af
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1184], rcx
                        mov              rcx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1192], rcx
                                                                                        jmp   n813_lit_string_α
.Lx878_0:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 10
                        lea              r9, [rbp + 1184]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx878_1
                        cmp              eax, 1
                                                                                        je    n798_disjunction_af
                                                                                        jmp   n813_lit_string_α
.Lx878_2:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n798_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n813_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n810_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n808_var_α
#-----------------------------------------------------------------------------------------------------------------------
n811_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n814_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n815_var_α
#-----------------------------------------------------------------------------------------------------------------------
n813_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n817_var_α
.Lx884_0:
                        .quad            .Lx884_0_s
.Lx884_0_s:
                        .string          "str conv err: n="
#-----------------------------------------------------------------------------------------------------------------------
n814_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx886_1
                        cmp              eax, 6
                                                                                        jne   .Lx886_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx886_0
.Lx886_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n818_op75_α
.Lx886_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 736]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n818_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n815_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n819_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n816_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n821_var_α
n816_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx890_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n820_return_α
.Lx890_0:
                        cmp              eax, 1
                                                                                        jne   .Lx890_1
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n820_return_α
.Lx890_1:
                                                                                        jmp   n820_return_α
n816_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n820_return_α
                                                                                        jmp   n820_return_α
n816_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n822_lit_string_α
                                                                                        jmp   n820_return_α
#-----------------------------------------------------------------------------------------------------------------------
n817_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n825_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n818_op75_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 7
                                                                                        je    .Lx894_1
                        cmp              eax, 6
                                                                                        jne   .Lx894_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx894_0
.Lx894_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n827_binop_α
.Lx894_0:
                        lea              rdi, [rbp + 1376]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 720]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n827_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n819_op75_α:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 7
                                                                                        je    .Lx896_1
                        cmp              eax, 6
                                                                                        jne   .Lx896_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx896_0
.Lx896_1:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n828_op75_α
.Lx896_0:
                        lea              rdi, [rbp + 1392]
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 656]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n828_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n820_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_conv_γ
#-----------------------------------------------------------------------------------------------------------------------
n821_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n829_call_builtin_icon_α
n821_var_β:
                                                                                        jmp   n816_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n830_var_α
n822_lit_string_β:
                                                                                        jmp   n820_return_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "conv ok: "
#-----------------------------------------------------------------------------------------------------------------------
n823_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn902:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn902]
                        lea              rsi, [rbp + 80]
                        mov              edx, 10
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n820_return_α
                                                                                        jmp   n816_disjunction_as
n823_call_builtin_icon_β:
                                                                                        jmp   n820_return_α
#-----------------------------------------------------------------------------------------------------------------------
n824_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn904:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn904]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n820_return_α
                                                                                        jmp   n816_disjunction_as
n824_call_builtin_icon_β:
                                                                                        jmp   n820_return_α
#-----------------------------------------------------------------------------------------------------------------------
n825_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n831_var_α
.Lx905_0:
                        .quad            .Lx905_0_s
.Lx905_0_s:
                        .string          " sn="
#-----------------------------------------------------------------------------------------------------------------------
n826_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_conv_γ
#-----------------------------------------------------------------------------------------------------------------------
n827_binop_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx907_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx907_0
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, qword ptr [rbp + 728]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 704], 6
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n832_assign_α
.Lx907_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n812_var_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n832_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n828_op75_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 7
                                                                                        je    .Lx909_1
                        cmp              eax, 6
                                                                                        jne   .Lx909_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 6
                                                                                        jne   .Lx909_0
.Lx909_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n833_binop_α
.Lx909_0:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n833_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n829_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn911:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn911]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n816_disjunction_af
                                                                                        jmp   n834_lit_real_α
n829_call_builtin_icon_β:
                                                                                        jmp   n816_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n830_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n824_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n835_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n812_var_α
#-----------------------------------------------------------------------------------------------------------------------
n833_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n816_disjunction_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n836_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_real_α:
                        mov              qword ptr [rbp + 496], 7
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n837_binop_test_α
.Lx918_0:
                        .quad            4397347889687374747
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n838_var_α
.Lx919_0:
                        .quad            .Lx919_0_s
.Lx919_0_s:
                        .string          " in="
#-----------------------------------------------------------------------------------------------------------------------
n836_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n816_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n837_binop_test_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n816_disjunction_af
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n839_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n840_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n841_var_α
.Lx924_0:
                        .quad            .Lx924_0_s
.Lx924_0_s:
                        .string          "real conv err: n="
#-----------------------------------------------------------------------------------------------------------------------
n840_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lrkfn926:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn926]
                        lea              rsi, [rbp + 976]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n826_return_α
                                                                                        jmp   n826_return_α
n840_call_builtin_icon_β:
                                                                                        jmp   n826_return_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n842_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n843_var_α
.Lx929_0:
                        .quad            .Lx929_0_s
.Lx929_0_s:
                        .string          " rn="
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n844_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n845_var_α
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          " in="
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n846_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n846_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n847_var_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          " d="
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n848_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n848_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n849_var_α
.Lx938_0:
                        .quad            .Lx938_0_s
.Lx938_0_s:
                        .string          " r="
#-----------------------------------------------------------------------------------------------------------------------
n849_var_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n823_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_conv_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_conv_β:
                                                                                        jmp   proc_conv_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_conv_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1448]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_conv_ω:
                        mov              rax, [rbp + 1456]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_conv_dcα:
                        pop              r11
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1440], r11
                        lea              rax, [rip + .Lx941_2]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rax, [rip + .Lx941_3]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1360
                        mov              edx, 1440
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_conv_α_body
.Lx941_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1472
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx941_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1472
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_unops_α
proc_unops_α:
                        .global          proc_unops_α
                        .global          proc_unops_β
                        .global          proc_unops_γ
                        .global          proc_unops_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_unops_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n943_var_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "u:  "
#-----------------------------------------------------------------------------------------------------------------------
n943_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n946_var_α
.Lx973_0:
                        .quad            .Lx973_0_s
.Lx973_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n945_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n948_var_α
n945_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx975_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n947_return_α
.Lx975_0:
                                                                                        jmp   n947_return_α
n945_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   n947_return_α
n945_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                                                                                        jmp   n947_return_α
#-----------------------------------------------------------------------------------------------------------------------
n946_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n950_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n947_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_unops_γ
#-----------------------------------------------------------------------------------------------------------------------
n948_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n951_call_builtin_icon_α
n948_var_β:
                                                                                        jmp   n945_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n949_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn982:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn982]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n947_return_α
                                                                                        jmp   n945_disjunction_as
n949_call_builtin_icon_β:
                                                                                        jmp   n947_return_α
#-----------------------------------------------------------------------------------------------------------------------
n950_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx984_1
                        cmp              eax, 6
                                                                                        jne   .Lx984_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx984_0
.Lx984_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n952_unop_α
.Lx984_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n952_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n951_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn986:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn986]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n945_disjunction_af
                                                                                        jmp   n953_disjunction_α
n951_call_builtin_icon_β:
                                                                                        jmp   n945_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n952_unop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n954_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n953_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n956_var_α
n953_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx989_0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n955_binop_test_α
.Lx989_0:
                        cmp              eax, 1
                                                                                        jne   .Lx989_1
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n955_binop_test_α
.Lx989_1:
                                                                                        jmp   n955_binop_test_α
n953_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        je    n945_disjunction_af
                                                                                        jmp   n945_disjunction_af
n953_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1
                                                                                        je    n957_var_α
                                                                                        jmp   n945_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n954_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n960_var_α
.Lx990_0:
                        .quad            .Lx990_0_s
.Lx990_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n955_binop_test_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 100
                                                                                        je    .Lx991_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 100
                                                                                        je    .Lx991_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx991_2
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx991_2
.Lx991_1:
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        je    n953_disjunction_β
                        mov              rcx, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rcx
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rcx
                                                                                        jmp   n961_lit_string_α
.Lx991_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 10
                        lea              r9, [rbp + 128]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx991_1
                        cmp              eax, 1
                                                                                        je    n953_disjunction_β
                                                                                        jmp   n961_lit_string_α
.Lx991_2:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n953_disjunction_β
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n961_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n956_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n962_lit_integer_α
n956_var_β:
                                                                                        jmp   n953_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n957_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n963_op75_α
n957_var_β:
                                                                                        jmp   n945_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n958_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n953_disjunction_as
n958_var_β:
                                                                                        jmp   n945_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n959_unop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n953_disjunction_as
n959_unop_β:
                                                                                        jmp   n945_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n960_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n964_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n961_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n949_call_builtin_icon_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          "  abs failure"
#-----------------------------------------------------------------------------------------------------------------------
n962_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n965_binop_test_α
.Lx1002_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n963_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx1004_1
                        cmp              eax, 6
                                                                                        jne   .Lx1004_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1004_0
.Lx1004_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n959_unop_α
.Lx1004_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 320]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n959_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n964_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn1006:             .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1006]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n945_disjunction_α
                                                                                        jmp   n966_var_α
n964_call_builtin_icon_β:
                                                                                        jmp   n945_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n965_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1007_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 100
                                                                                        je    .Lx1007_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1007_2
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx1007_2
.Lx1007_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        jle   n953_disjunction_af
                        mov              rcx, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rcx
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rcx
                                                                                        jmp   n958_var_α
.Lx1007_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 7
                        lea              r9, [rbp + 256]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1007_1
                        cmp              eax, 1
                                                                                        je    n953_disjunction_af
                                                                                        jmp   n958_var_α
.Lx1007_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n953_disjunction_af
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n958_var_α
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n967_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n967_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n968_call_proc_staged_α
.Lx1010_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n968_call_proc_staged_α:
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 752]
                        call             proc_compares_dcα
                                                                                        jmp   .Lx1012_2
.Lx1012_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n945_disjunction_α
                                                                                        jmp   n969_call_builtin_icon_α
n968_call_proc_staged_β:
                                                                                        jmp   n945_disjunction_α
.Lx1012_0:
                        .quad            .Lx1012_0_s
.Lx1012_0_s:
                        .string          "compares"
#-----------------------------------------------------------------------------------------------------------------------
n969_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn1014:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1014]
                        lea              rsi, [rbp + 368]
                        mov              edx, 7
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n945_disjunction_α
                                                                                        jmp   n945_disjunction_α
n969_call_builtin_icon_β:
                                                                                        jmp   n945_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_unops_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_unops_β:
                                                                                        jmp   proc_unops_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_unops_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 776]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_unops_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_unops_dcα:
                        pop              r11
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 768], r11
                        lea              rax, [rip + .Lx1015_2]
                        mov              qword ptr [rbp + 776], rax
                        lea              rax, [rip + .Lx1015_3]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 768
                        mov              edx, 768
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_unops_α_body
.Lx1015_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1015_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_binops_α
proc_binops_α:
                        .global          proc_binops_α
                        .global          proc_binops_β
                        .global          proc_binops_γ
                        .global          proc_binops_ω
                        sub              rsp, 1520
                        mov              [rsp + 1496], rcx
                        mov              [rsp + 1504], rdx
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1488
                        call             rt_jmp_frame_lexprep2@PLT
proc_binops_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1016_lit_string_α:
                        mov              qword ptr [rsp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   n1017_var_α
.Lx1070_0:
                        .quad            .Lx1070_0_s
.Lx1070_0_s:
                        .string          "b:  "
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n1018_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_string_α:
                        mov              qword ptr [rsp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 1368], rax
                                                                                        jmp   n1020_var_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1019_lit_string_α:
                        mov              qword ptr [rsp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n1021_var_α
.Lx1074_0:
                        .quad            .Lx1074_0_s
.Lx1074_0_s:
                        .string          "    +-   "
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n1022_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n1023_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n1025_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1023_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n1026_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_lit_string_α:
                        mov              qword ptr [rsp + 640], 1
                        mov              rax, qword ptr [rip + .Lx1083_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n1027_var_α
.Lx1083_0:
                        .quad            .Lx1083_0_s
.Lx1083_0_s:
                        .string          "    */%  "
#-----------------------------------------------------------------------------------------------------------------------
n1025_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n1028_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1026_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx1087_1
                        cmp              eax, 6
                                                                                        jne   .Lx1087_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1087_0
.Lx1087_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n1029_op75_α
.Lx1087_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1072]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1029_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n1030_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_call_proc_staged_α:
                        lea              rsi, [rsp + 1456]
                        lea              rdx, [rsp + 1472]
                        call             proc_compares_dcα
                                                                                        jmp   .Lx1091_2
.Lx1091_2:
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n1019_lit_string_α
                                                                                        jmp   n1032_call_builtin_icon_α
n1028_call_proc_staged_β:
                                                                                        jmp   n1019_lit_string_α
.Lx1091_0:
                        .quad            .Lx1091_0_s
.Lx1091_0_s:
                        .string          "compares"
#-----------------------------------------------------------------------------------------------------------------------
n1029_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1093_1
                        cmp              eax, 6
                                                                                        jne   .Lx1093_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1093_0
.Lx1093_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1064], rax
                                                                                        jmp   n1033_binop_α
.Lx1093_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1056]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1033_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1030_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n1034_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_lit_string_α:
                        mov              qword ptr [rsp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n1035_var_α
.Lx1096_0:
                        .quad            .Lx1096_0_s
.Lx1096_0_s:
                        .string          "    &|!  "
#-----------------------------------------------------------------------------------------------------------------------
n1032_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn1098:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1098]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n1019_lit_string_α
                                                                                        jmp   n1019_lit_string_α
n1032_call_builtin_icon_β:
                                                                                        jmp   n1019_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_binop_α:
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx1099_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx1099_0
                        mov              rax, qword ptr [rsp + 1080]
                        mov              rcx, qword ptr [rsp + 1064]
                        add              rax, rcx
                        mov              qword ptr [rsp + 1040], 6
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n1036_lit_string_α
.Lx1099_0:
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1024_lit_string_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n1036_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx1101_1
                        cmp              eax, 6
                                                                                        jne   .Lx1101_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1101_0
.Lx1101_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n1037_op75_α
.Lx1101_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1037_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n1038_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_lit_string_α:
                        mov              qword ptr [rsp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 1128], rax
                                                                                        jmp   n1040_var_α
.Lx1104_0:
                        .quad            .Lx1104_0_s
.Lx1104_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1037_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1106_1
                        cmp              eax, 6
                                                                                        jne   .Lx1106_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1106_0
.Lx1106_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n1041_binop_α
.Lx1106_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 672]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1041_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1038_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n1042_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_binops_γ
#-----------------------------------------------------------------------------------------------------------------------
n1040_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n1043_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_binop_α:
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx1112_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx1112_0
                        mov              rax, qword ptr [rsp + 696]
                        mov              rcx, qword ptr [rsp + 680]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 656], 6
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n1044_lit_string_α
.Lx1112_0:
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n1031_lit_string_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n1044_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn1114:             .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1114]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n1039_return_α
                                                                                        jmp   n1045_lit_string_α
n1042_call_builtin_icon_β:
                                                                                        jmp   n1039_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1043_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n1046_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:
                        mov              qword ptr [rsp + 736], 1
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n1047_var_α
.Lx1117_0:
                        .quad            .Lx1117_0_s
.Lx1117_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1045_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1118_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n1048_var_α
.Lx1118_0:
                        .quad            .Lx1118_0_s
.Lx1118_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1046_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx1120_1
                        cmp              eax, 6
                                                                                        jne   .Lx1120_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1120_0
.Lx1120_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n1049_op75_α
.Lx1120_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1168]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1049_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n1050_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1048_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1126_1
                        cmp              eax, 6
                                                                                        jne   .Lx1126_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1126_0
.Lx1126_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n1052_binop_α
.Lx1126_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1052_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1050_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n1053_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n1054_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_binop_α:
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx1131_0
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx1131_0
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rcx, qword ptr [rsp + 1160]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 1136], 6
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   n1055_call_builtin_icon_α
.Lx1131_0:
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n1024_lit_string_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n1055_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1053_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx1133_1
                        cmp              eax, 6
                                                                                        jne   .Lx1133_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1133_0
.Lx1133_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n1056_op75_α
.Lx1133_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1056_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn1135:             .string          "ior"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1135]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n1039_return_α
                                                                                        jmp   n1057_lit_string_α
n1054_call_builtin_icon_β:
                                                                                        jmp   n1039_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn1137:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rsp + 944]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n1024_lit_string_α
                                                                                        jmp   n1024_lit_string_α
n1055_call_builtin_icon_β:
                                                                                        jmp   n1024_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1139_1
                        cmp              eax, 6
                                                                                        jne   .Lx1139_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1139_0
.Lx1139_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n1058_binop_α
.Lx1139_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1058_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1057_lit_string_α:
                        mov              qword ptr [rsp + 400], 1
                        mov              rax, qword ptr [rip + .Lx1140_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n1059_var_α
.Lx1140_0:
                        .quad            .Lx1140_0_s
.Lx1140_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1058_binop_α:
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n1031_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n1060_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n1061_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_lit_string_α:
                        mov              qword ptr [rsp + 832], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n1062_var_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n1063_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n1064_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn1150:             .string          "ixor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1150]
                        lea              rsi, [rsp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n1039_return_α
                                                                                        jmp   n1065_call_builtin_icon_α
n1063_call_builtin_icon_β:
                                                                                        jmp   n1039_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n1066_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn1154:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1154]
                        lea              rsi, [rsp + 64]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n1039_return_α
                                                                                        jmp   n1039_return_α
n1065_call_builtin_icon_β:
                                                                                        jmp   n1039_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_op75_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx1156_1
                        cmp              eax, 6
                                                                                        jne   .Lx1156_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1156_0
.Lx1156_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n1067_op75_α
.Lx1156_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 880]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1067_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_op75_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx1158_1
                        cmp              eax, 6
                                                                                        jne   .Lx1158_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1158_0
.Lx1158_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n1068_binop_α
.Lx1158_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 864]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1068_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_binop_α:
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n1031_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n1069_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn1161:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1161]
                        lea              rsi, [rsp + 528]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n1031_lit_string_α
                                                                                        jmp   n1031_lit_string_α
n1069_call_builtin_icon_β:
                                                                                        jmp   n1031_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_binops_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_binops_β:
                                                                                        jmp   proc_binops_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_binops_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1496]
                        add              rsp, 1520
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_binops_ω:
                        mov              rax, [rsp + 1504]
                        add              rsp, 1520
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_binops_dcα:
                        pop              r11
                        sub              rsp, 1536
                        mov              qword ptr [rsp + 1512], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1488], r11
                        lea              rax, [rip + .Lx1162_2]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rax, [rip + .Lx1162_3]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1488
                        mov              edx, 1488
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_binops_α_body
.Lx1162_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1520
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1162_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1520
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_compares_α
proc_compares_α:
                        .global          proc_compares_α
                        .global          proc_compares_β
                        .global          proc_compares_γ
                        .global          proc_compares_ω
                        sub              rsp, 1200
                        mov              [rsp + 1176], rcx
                        mov              [rsp + 1184], rdx
                        mov              [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
proc_compares_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1164_assign_α
.Lx1227_0:
                        .quad            .Lx1227_0_s
.Lx1227_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1164_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n1165_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1165_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n1167_var_α
n1165_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx1230_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n1166_disjunction_α
.Lx1230_0:
                                                                                        jmp   n1166_disjunction_α
n1165_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n1166_disjunction_α
n1165_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n1166_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n1170_var_α
n1166_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx1232_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1169_disjunction_α
.Lx1232_0:
                                                                                        jmp   n1169_disjunction_α
n1166_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                                                                                        jmp   n1169_disjunction_α
n1166_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                                                                                        jmp   n1169_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1172_var_α
n1167_var_β:
                                                                                        jmp   n1165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1168_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n1165_disjunction_as
n1168_assign_β:
                                                                                        jmp   n1166_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1169_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n1174_var_α
n1169_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx1237_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1173_disjunction_α
.Lx1237_0:
                                                                                        jmp   n1173_disjunction_α
n1169_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                                                                                        jmp   n1173_disjunction_α
n1169_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                                                                                        jmp   n1173_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1176_var_α
n1170_var_β:
                                                                                        jmp   n1166_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1171_assign_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n1166_disjunction_as
n1171_assign_β:
                                                                                        jmp   n1169_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n1177_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1173_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n1179_var_α
n1173_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx1244_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1178_disjunction_α
.Lx1244_0:
                                                                                        jmp   n1178_disjunction_α
n1173_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                                                                                        jmp   n1178_disjunction_α
n1173_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                                                                                        jmp   n1178_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1174_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n1181_var_α
n1174_var_β:
                                                                                        jmp   n1169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1175_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n1169_disjunction_as
n1175_assign_β:
                                                                                        jmp   n1173_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1176_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n1182_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1250_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx1250_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1250_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1250_2
.Lx1250_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n1165_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1056], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1064], rcx
                                                                                        jmp   n1183_var_α
.Lx1250_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        lea              r9, [rbp + 1056]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1250_1
                        cmp              eax, 1
                                                                                        je    n1165_disjunction_af
                                                                                        jmp   n1183_var_α
.Lx1250_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1165_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n1183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n1185_var_α
n1178_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx1252_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1184_disjunction_α
.Lx1252_0:
                                                                                        jmp   n1184_disjunction_α
n1178_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                                                                                        jmp   n1184_disjunction_α
n1178_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                                                                                        jmp   n1184_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1179_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1187_var_α
n1179_var_β:
                                                                                        jmp   n1173_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1180_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1173_disjunction_as
n1180_assign_β:
                                                                                        jmp   n1178_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1181_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n1188_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1182_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1258_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx1258_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1258_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1258_2
.Lx1258_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jg    n1166_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 880], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 888], rcx
                                                                                        jmp   n1189_var_α
.Lx1258_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 6
                        lea              r9, [rbp + 880]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1258_1
                        cmp              eax, 1
                                                                                        je    n1166_disjunction_af
                                                                                        jmp   n1189_var_α
.Lx1258_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1166_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n1189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1183_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1190_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n1192_var_α
n1184_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx1262_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1191_var_α
.Lx1262_0:
                                                                                        jmp   n1191_var_α
n1184_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n1191_var_α
n1184_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n1191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1194_var_α
n1185_var_β:
                                                                                        jmp   n1178_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1186_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1178_disjunction_as
n1186_assign_β:
                                                                                        jmp   n1184_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1195_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1268_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx1268_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1268_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1268_2
.Lx1268_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jne   n1169_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rcx
                                                                                        jmp   n1196_var_α
.Lx1268_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 9
                        lea              r9, [rbp + 704]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1268_1
                        cmp              eax, 1
                                                                                        je    n1169_disjunction_af
                                                                                        jmp   n1196_var_α
.Lx1268_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1169_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1197_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1190_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1165_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n1198_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1199_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1192_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1200_var_α
n1192_var_β:
                                                                                        jmp   n1184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1193_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n1184_disjunction_as
n1193_assign_β:
                                                                                        jmp   n1191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1201_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1195_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1279_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx1279_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1279_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1279_2
.Lx1279_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        je    n1173_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rcx
                                                                                        jmp   n1202_var_α
.Lx1279_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 10
                        lea              r9, [rbp + 528]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1279_1
                        cmp              eax, 1
                                                                                        je    n1173_disjunction_af
                                                                                        jmp   n1202_var_α
.Lx1279_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1173_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1196_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1203_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_binop_test_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1166_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n1204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1198_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n1205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_compares_γ
#-----------------------------------------------------------------------------------------------------------------------
n1200_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1206_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1201_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1288_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx1288_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1288_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1288_2
.Lx1288_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jle   n1178_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 352], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 360], rcx
                                                                                        jmp   n1207_var_α
.Lx1288_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 7
                        lea              r9, [rbp + 352]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1288_1
                        cmp              eax, 1
                                                                                        je    n1178_disjunction_af
                                                                                        jmp   n1207_var_α
.Lx1288_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1178_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1207_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1202_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n1208_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1203_binop_test_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1169_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n1209_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1204_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n1210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1205_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx1294_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1211_binop_α
.Lx1294_0:
                        .quad            .Lx1294_0_s
.Lx1294_0_s:
                        .string          " <"
#-----------------------------------------------------------------------------------------------------------------------
n1206_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx1295_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx1295_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx1295_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx1295_2
.Lx1295_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jl    n1184_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n1212_var_α
.Lx1295_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 8
                        lea              r9, [rbp + 176]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1295_1
                        cmp              eax, 1
                                                                                        je    n1184_disjunction_af
                                                                                        jmp   n1212_var_α
.Lx1295_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1184_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1212_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1207_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1213_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1208_binop_test_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1173_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n1214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1209_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1210_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx1301_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n1216_binop_α
.Lx1301_0:
                        .quad            .Lx1301_0_s
.Lx1301_0_s:
                        .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n1211_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n1168_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1212_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1217_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1213_binop_test_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1178_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n1218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1214_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1215_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx1308_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n1220_binop_α
.Lx1308_0:
                        .quad            .Lx1308_0_s
.Lx1308_0_s:
                        .string          " ="
#-----------------------------------------------------------------------------------------------------------------------
n1216_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n1171_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1217_binop_test_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1184_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1218_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1219_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx1313_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1223_binop_α
.Lx1313_0:
                        .quad            .Lx1313_0_s
.Lx1313_0_s:
                        .string          " ~="
#-----------------------------------------------------------------------------------------------------------------------
n1220_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n1175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1221_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1222_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx1317_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1225_binop_α
.Lx1317_0:
                        .quad            .Lx1317_0_s
.Lx1317_0_s:
                        .string          " >"
#-----------------------------------------------------------------------------------------------------------------------
n1223_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n1180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1224_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1319_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1226_binop_α
.Lx1319_0:
                        .quad            .Lx1319_0_s
.Lx1319_0_s:
                        .string          " >="
#-----------------------------------------------------------------------------------------------------------------------
n1225_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n1186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1226_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1193_assign_α
#-----------------------------------------------------------------------------------------------------------------------
proc_compares_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_compares_β:
                                                                                        jmp   proc_compares_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_compares_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1176]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_compares_ω:
                        mov              rax, [rbp + 1184]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_compares_dcα:
                        pop              r11
                        sub              rsp, 1216
                        mov              qword ptr [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1168], r11
                        lea              rax, [rip + .Lx1322_2]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rax, [rip + .Lx1322_3]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1152
                        mov              edx, 1168
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_compares_α_body
.Lx1322_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1200
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1322_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1200
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_radix_α
proc_radix_α:
                        .global          proc_radix_α
                        .global          proc_radix_β
                        .global          proc_radix_γ
                        .global          proc_radix_ω
                        sub              rsp, 1248
                        mov              [rsp + 1224], rcx
                        mov              [rsp + 1232], rdx
                        mov              [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1136
                        mov              edx, 1216
                        call             rt_jmp_frame_lexprep2@PLT
proc_radix_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1323_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx1375_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1324_lit_integer_α
.Lx1375_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1324_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n1325_binop_α
.Lx1376_0:
                        .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n1325_binop_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1327_lit_charset_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n1326_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1326_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n1327_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1327_lit_charset_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], -1
                        mov              rax, qword ptr [rip + .Lx1379_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n1328_lit_charset_α
.Lx1379_0:
                        .quad            .Lx1379_0_s
.Lx1379_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n1328_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx1380_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1329_binop_α
.Lx1380_0:
                        .quad            .Lx1380_0_s
.Lx1380_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1329_binop_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n1330_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1330_assign_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n1331_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1331_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx1383_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1332_lit_integer_α
.Lx1383_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1332_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1333_to_α
.Lx1384_0:
                        .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n1333_to_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 448], rax
.Lx1386_0:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jg    n1359_lit_string_α
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1334_assign_α
n1333_to_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx1386_0
#-----------------------------------------------------------------------------------------------------------------------
n1334_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n1335_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1335_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n1336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1336_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1337_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1337_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1338_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1340_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1339_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx1396_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n1342_binop_α
.Lx1396_0:
                        .quad            .Lx1396_0_s
.Lx1396_0_s:
                        .string          "R"
#-----------------------------------------------------------------------------------------------------------------------
n1340_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx1397_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1343_var_α
.Lx1397_0:
                        .quad            .Lx1397_0_s
.Lx1397_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n1341_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n1333_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1342_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n1344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1343_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n1345_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n1346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1345_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn1406:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1406]
                        lea              rsi, [rbp + 576]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n1341_unmark_α
                                                                                        jmp   n1347_conjunction_α
n1345_call_builtin_icon_β:
                                                                                        jmp   n1341_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1346_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1348_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1347_conjunction_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1341_unmark_α
n1347_conjunction_β:
                                                                                        jmp   n1341_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1348_subscript_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1338_var_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n1349_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1349_deref_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1338_var_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n1350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1350_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx1412_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n1351_lit_integer_α
.Lx1412_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1351_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx1413_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1352_to_α
.Lx1413_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n1352_to_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1008], 6
                        mov              qword ptr [rbp + 1016], rax
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1024], 6
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 992], rax
.Lx1415_0:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1032]
                        cmp              rax, rcx
                                                                                        jg    n1338_var_α
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1353_call_builtin_icon_α
n1352_to_β:
                        inc              qword ptr [rbp + 992]
                                                                                        jmp   .Lx1415_0
#-----------------------------------------------------------------------------------------------------------------------
n1353_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn1417:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1417]
                        lea              rsi, [rbp + 864]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n1352_to_β
                                                                                        jmp   n1354_binop_α
n1353_call_builtin_icon_β:
                                                                                        jmp   n1352_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1354_binop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1355_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1355_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n1356_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1356_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn1421:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1421]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n1352_to_β
                                                                                        jmp   n1357_binop_test_α
n1356_call_builtin_icon_β:
                                                                                        jmp   n1352_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1357_binop_test_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 100
                                                                                        je    .Lx1422_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 100
                                                                                        je    .Lx1422_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx1422_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx1422_2
.Lx1422_1:
                        mov              rax, qword ptr [rbp + 1192]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jge   n1352_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rcx
                                                                                        jmp   n1358_assign_α
.Lx1422_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 5
                        lea              r9, [rbp + 688]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1422_1
                        cmp              eax, 1
                                                                                        je    n1352_to_β
                                                                                        jmp   n1358_assign_α
.Lx1422_2:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1352_to_β
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1358_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1358_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n1338_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1359_lit_string_α:
                        mov              qword ptr [rbp + 48], 1
                        mov              rax, qword ptr [rip + .Lx1424_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1360_lit_string_α
.Lx1424_0:
                        .quad            .Lx1424_0_s
.Lx1424_0_s:
                        .string          "36r"
#-----------------------------------------------------------------------------------------------------------------------
n1360_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1425_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1361_lit_integer_α
.Lx1425_0:
                        .quad            .Lx1425_0_s
.Lx1425_0_s:
                        .string          "Z"
#-----------------------------------------------------------------------------------------------------------------------
n1361_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx1426_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1362_lit_integer_α
.Lx1426_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1362_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1427_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1363_to_α
.Lx1427_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n1363_to_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 160], rax
.Lx1429_0:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx
                                                                                        jg    n1365_return_α
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1364_call_builtin_icon_α
n1363_to_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx1429_0
#-----------------------------------------------------------------------------------------------------------------------
n1364_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1431:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1431]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n1363_to_β
                                                                                        jmp   n1366_binop_α
n1364_call_builtin_icon_β:
                                                                                        jmp   n1363_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1365_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_radix_γ
#-----------------------------------------------------------------------------------------------------------------------
n1366_binop_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n1367_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1367_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n1368_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1368_bound_α:
                        mov              qword ptr [rbp + 208], rsp
                                                                                        jmp   n1369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1369_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1370_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1439_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1372_var_α
.Lx1439_0:
                        .quad            .Lx1439_0_s
.Lx1439_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n1371_unmark_α:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n1363_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1372_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1373_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1373_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn1445:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1445]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n1371_unmark_α
                                                                                        jmp   n1374_call_builtin_icon_α
n1373_call_builtin_icon_β:
                                                                                        jmp   n1371_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1374_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1447:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1447]
                        lea              rsi, [rbp + 272]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n1371_unmark_α
                                                                                        jmp   n1371_unmark_α
n1374_call_builtin_icon_β:
                                                                                        jmp   n1371_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_radix_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_radix_β:
                                                                                        jmp   proc_radix_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_radix_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1224]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_radix_ω:
                        mov              rax, [rbp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_radix_dcα:
                        pop              r11
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1216], r11
                        lea              rax, [rip + .Lx1448_2]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rax, [rip + .Lx1448_3]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rdi, rbp
                        mov              esi, 1136
                        mov              edx, 1216
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_radix_α_body
.Lx1448_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1448_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_over_α
proc_over_α:
                        .global          proc_over_α
                        .global          proc_over_β
                        .global          proc_over_γ
                        .global          proc_over_ω
                        sub              rsp, 1472
                        mov              [rsp + 1448], rcx
                        mov              [rsp + 1456], rdx
                        mov              [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1424
                        mov              edx, 1440
                        call             rt_jmp_frame_lexprep2@PLT
proc_over_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1449_disjunction_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   n1451_keyword_icon_gen_α
n1449_disjunction_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx1525_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n1450_lit_integer_α
.Lx1525_0:
                                                                                        jmp   n1450_lit_integer_α
n1449_disjunction_β:
                        mov              eax, dword ptr [rbp + 1264]
                                                                                        jmp   n1450_lit_integer_α
n1449_disjunction_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                                                                                        jmp   n1450_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1450_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx1526_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n1453_lit_integer_α
.Lx1526_0:
                        .quad            100000
#-----------------------------------------------------------------------------------------------------------------------
n1451_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 1392], 0
.Lx1527_1:
                        mov              rdi, qword ptr [rip + .Lx1527_0]
                        mov              rsi, qword ptr [rbp + 1392]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n1522_var_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              rax, qword ptr [rbp + 1392]
                        add              rax, 1
                        mov              qword ptr [rbp + 1392], rax
                                                                                        jmp   n1454_lit_string_α
n1451_keyword_icon_gen_β:
                                                                                        jmp   .Lx1527_1
.Lx1527_0:
                        .quad            .Lx1527_0_s
.Lx1527_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n1452_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn1529:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1529]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n1450_lit_integer_α
                                                                                        jmp   n1449_disjunction_as
n1452_call_builtin_icon_β:
                                                                                        jmp   n1450_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1453_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx1530_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n1455_binop_α
.Lx1530_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n1454_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx1531_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n1456_binop_test_α
.Lx1531_0:
                        .quad            .Lx1531_0_s
.Lx1531_0_s:
                        .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n1455_binop_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1458_var_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n1457_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1456_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1451_keyword_icon_gen_β
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n1449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1457_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1458_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1458_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n1459_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn1538:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1538]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n1460_var_α
                                                                                        jmp   n1460_var_α
n1459_call_builtin_icon_β:
                                                                                        jmp   n1460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1460_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1461_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1461_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx1541_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1463_lit_integer_α
.Lx1541_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1462_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1464_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1463_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx1544_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n1466_binop_α
.Lx1544_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1464_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn1546:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1546]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n1465_var_α
                                                                                        jmp   n1465_var_α
n1464_call_builtin_icon_β:
                                                                                        jmp   n1465_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1465_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n1467_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1466_binop_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1462_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n1469_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1467_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1470_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1468_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n1471_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1469_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1555_1
                        cmp              eax, 6
                                                                                        jne   .Lx1555_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 6
                                                                                        jne   .Lx1555_0
.Lx1555_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n1473_binop_α
.Lx1555_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1088]
                        lea              rdx, [rbp + 1056]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1473_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1470_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1557_1
                        cmp              eax, 6
                                                                                        jne   .Lx1557_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx1557_0
.Lx1557_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1474_op75_α
.Lx1557_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 928]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1474_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1471_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn1559:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1559]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n1472_lit_integer_α
                                                                                        jmp   n1472_lit_integer_α
n1471_call_builtin_icon_β:
                                                                                        jmp   n1472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1472_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx1560_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1475_lit_integer_α
.Lx1560_0:
                        .quad            100000
#-----------------------------------------------------------------------------------------------------------------------
n1473_binop_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx1561_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 6
                                                                                        jne   .Lx1561_0
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rcx, qword ptr [rbp + 1096]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n1476_assign_α
.Lx1561_0:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1462_var_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n1476_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1474_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1563_1
                        cmp              eax, 6
                                                                                        jne   .Lx1563_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx1563_0
.Lx1563_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n1477_binop_α
.Lx1563_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 912]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1477_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1475_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx1564_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1478_binop_α
.Lx1564_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n1476_assign_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1477_binop_α:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 6
                                                                                        jne   .Lx1566_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 6
                                                                                        jne   .Lx1566_0
                        mov              rax, qword ptr [rbp + 936]
                        mov              rcx, qword ptr [rbp + 920]
                        add              rax, rcx
                        mov              qword ptr [rbp + 896], 6
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1479_assign_α
.Lx1566_0:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1468_var_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n1479_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1478_binop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n1481_var_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1480_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1479_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1468_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1480_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1481_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1482_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1482_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn1573:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1573]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n1483_var_α
                                                                                        jmp   n1483_var_α
n1482_call_builtin_icon_β:
                                                                                        jmp   n1483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1483_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1484_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1484_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx1576_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1486_lit_integer_α
.Lx1576_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1485_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n1487_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1486_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx1579_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1489_binop_α
.Lx1579_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1487_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn1581:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1581]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n1488_var_α
                                                                                        jmp   n1488_var_α
n1487_call_builtin_icon_β:
                                                                                        jmp   n1488_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1488_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1490_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1485_var_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n1492_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1490_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1493_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1491_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1494_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1492_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1590_1
                        cmp              eax, 6
                                                                                        jne   .Lx1590_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx1590_0
.Lx1590_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1496_binop_α
.Lx1590_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1496_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1493_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1592_1
                        cmp              eax, 6
                                                                                        jne   .Lx1592_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx1592_0
.Lx1592_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1497_op75_α
.Lx1592_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 512]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1497_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1494_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn1594:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1594]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n1495_lit_integer_α
                                                                                        jmp   n1495_lit_integer_α
n1494_call_builtin_icon_β:
                                                                                        jmp   n1495_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1495_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx1595_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1498_lit_integer_α
.Lx1595_0:
                        .quad            18446744073709451616
#-----------------------------------------------------------------------------------------------------------------------
n1496_binop_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx1596_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx1596_0
                        mov              rax, qword ptr [rbp + 648]
                        mov              rcx, qword ptr [rbp + 680]
                        add              rax, rcx
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n1499_assign_α
.Lx1596_0:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1485_var_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n1499_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1497_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1598_1
                        cmp              eax, 6
                                                                                        jne   .Lx1598_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx1598_0
.Lx1598_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1500_binop_α
.Lx1598_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 496]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1500_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1498_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx1599_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1501_binop_α
.Lx1599_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n1499_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1485_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1500_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx1601_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx1601_0
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1502_assign_α
.Lx1601_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n1491_var_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n1502_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1501_binop_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n1504_var_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n1503_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1502_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1503_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1504_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1505_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1505_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1608:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1608]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n1506_var_α
                                                                                        jmp   n1506_var_α
n1505_call_builtin_icon_β:
                                                                                        jmp   n1506_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1506_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1507_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1507_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx1611_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1509_op75_α
.Lx1611_0:
                        .quad            18446744072635809792
#-----------------------------------------------------------------------------------------------------------------------
n1508_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1510_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1509_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1615_1
                        cmp              eax, 6
                                                                                        jne   .Lx1615_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx1615_0
.Lx1615_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1512_binop_α
.Lx1615_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1512_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1510_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1617:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1617]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n1511_var_α
                                                                                        jmp   n1511_var_α
n1510_call_builtin_icon_β:
                                                                                        jmp   n1511_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1511_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n1513_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1512_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx1620_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, -1073741824
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1515_assign_α
.Lx1620_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1508_var_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n1515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1513_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx1621_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1516_lit_integer_α
.Lx1621_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1514_var_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1517_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1515_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1516_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx1625_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1518_binop_α
.Lx1625_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1517_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn1627:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1627]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    proc_over_ω
                                                                                        jmp   proc_over_ω
n1517_call_builtin_icon_β:
                                                                                        jmp   proc_over_ω
#-----------------------------------------------------------------------------------------------------------------------
n1518_binop_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1514_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n1519_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n1519_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx1630_1
                        cmp              eax, 6
                                                                                        jne   .Lx1630_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx1630_0
.Lx1630_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1520_binop_α
.Lx1630_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 96]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1520_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1520_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx1631_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx1631_0
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, qword ptr [rbp + 136]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1521_assign_α
.Lx1631_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n1514_var_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n1521_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1521_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n1514_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1522_var_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                                                                                        jmp   n1523_lit_string_α
n1522_var_β:
                                                                                        jmp   n1449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1523_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx1634_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n1452_call_builtin_icon_α
.Lx1634_0:
                        .quad            .Lx1634_0_s
.Lx1634_0_s:
                        .string          "large integers not supported"
#-----------------------------------------------------------------------------------------------------------------------
proc_over_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_over_β:
                                                                                        jmp   proc_over_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_over_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1448]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_over_ω:
                        mov              rax, [rbp + 1456]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_over_dcα:
                        pop              r11
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1440], r11
                        lea              rax, [rip + .Lx1635_2]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rax, [rip + .Lx1635_3]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rdi, rbp
                        mov              esi, 1424
                        mov              edx, 1440
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_over_α_body
.Lx1635_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1472
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1635_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1472
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "compiler"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_compiler_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 896
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_compiler_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "boundaries"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_boundaries_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_boundaries_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fact"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fact_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fact_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "fib"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_fib_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_fib_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "power"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_power_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_power_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "impower"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_impower_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_impower_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "minpower"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_minpower_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_minpower_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "bigexp"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_bigexp_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 848
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_bigexp_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "mersenne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_mersenne_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_mersenne_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "perfect"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_perfect_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_perfect_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "tmul"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_tmul_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1568
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_tmul_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "conv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_conv_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1440
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_conv_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "unops"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_unops_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_unops_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "binops"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_binops_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1488
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_binops_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "compares"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_compares_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_compares_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "radix"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_radix_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_radix_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "over"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_over_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1440
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_over_dcα]
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
                        sub              rsp, 4312
                        mov              rdi, rsp
                        mov              ecx, 4312
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4304], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1636_lit_integer_α:
                        mov              qword ptr [rbp + 3856], 6
                        mov              rax, qword ptr [rip + .Lx1801_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n1637_lit_integer_α
.Lx1801_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1637_lit_integer_α:
                        mov              qword ptr [rbp + 3872], 6
                        mov              rax, qword ptr [rip + .Lx1802_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n1638_lit_integer_α
.Lx1802_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1638_lit_integer_α:
                        mov              qword ptr [rbp + 3888], 6
                        mov              rax, qword ptr [rip + .Lx1803_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n1639_lit_integer_α
.Lx1803_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1639_lit_integer_α:
                        mov              qword ptr [rbp + 3904], 6
                        mov              rax, qword ptr [rip + .Lx1804_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n1640_lit_integer_α
.Lx1804_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1640_lit_integer_α:
                        mov              qword ptr [rbp + 3920], 6
                        mov              rax, qword ptr [rip + .Lx1805_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n1641_lit_integer_α
.Lx1805_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1641_lit_integer_α:
                        mov              qword ptr [rbp + 3936], 6
                        mov              rax, qword ptr [rip + .Lx1806_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n1642_lit_integer_α
.Lx1806_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n1642_lit_integer_α:
                        mov              qword ptr [rbp + 3952], 6
                        mov              rax, qword ptr [rip + .Lx1807_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n1643_lit_integer_α
.Lx1807_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n1643_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx1808_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n1644_lit_integer_α
.Lx1808_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n1644_lit_integer_α:
                        mov              qword ptr [rbp + 3984], 6
                        mov              rax, qword ptr [rip + .Lx1809_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n1645_lit_integer_α
.Lx1809_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1645_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx1810_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n1646_lit_integer_α
.Lx1810_0:
                        .quad            29
#-----------------------------------------------------------------------------------------------------------------------
n1646_lit_integer_α:
                        mov              qword ptr [rbp + 4016], 6
                        mov              rax, qword ptr [rip + .Lx1811_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n1647_lit_integer_α
.Lx1811_0:
                        .quad            31
#-----------------------------------------------------------------------------------------------------------------------
n1647_lit_integer_α:
                        mov              qword ptr [rbp + 4032], 6
                        mov              rax, qword ptr [rip + .Lx1812_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n1648_lit_integer_α
.Lx1812_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n1648_lit_integer_α:
                        mov              qword ptr [rbp + 4048], 6
                        mov              rax, qword ptr [rip + .Lx1813_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n1649_lit_integer_α
.Lx1813_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n1649_lit_integer_α:
                        mov              qword ptr [rbp + 4064], 6
                        mov              rax, qword ptr [rip + .Lx1814_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n1650_lit_integer_α
.Lx1814_0:
                        .quad            43
#-----------------------------------------------------------------------------------------------------------------------
n1650_lit_integer_α:
                        mov              qword ptr [rbp + 4080], 6
                        mov              rax, qword ptr [rip + .Lx1815_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n1651_lit_integer_α
.Lx1815_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n1651_lit_integer_α:
                        mov              qword ptr [rbp + 4096], 6
                        mov              rax, qword ptr [rip + .Lx1816_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n1652_lit_integer_α
.Lx1816_0:
                        .quad            53
#-----------------------------------------------------------------------------------------------------------------------
n1652_lit_integer_α:
                        mov              qword ptr [rbp + 4112], 6
                        mov              rax, qword ptr [rip + .Lx1817_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n1653_lit_integer_α
.Lx1817_0:
                        .quad            59
#-----------------------------------------------------------------------------------------------------------------------
n1653_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 6
                        mov              rax, qword ptr [rip + .Lx1818_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n1654_lit_integer_α
.Lx1818_0:
                        .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n1654_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx1819_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n1655_lit_integer_α
.Lx1819_0:
                        .quad            67
#-----------------------------------------------------------------------------------------------------------------------
n1655_lit_integer_α:
                        mov              qword ptr [rbp + 4160], 6
                        mov              rax, qword ptr [rip + .Lx1820_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n1656_lit_integer_α
.Lx1820_0:
                        .quad            71
#-----------------------------------------------------------------------------------------------------------------------
n1656_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 6
                        mov              rax, qword ptr [rip + .Lx1821_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n1657_lit_integer_α
.Lx1821_0:
                        .quad            73
#-----------------------------------------------------------------------------------------------------------------------
n1657_lit_integer_α:
                        mov              qword ptr [rbp + 4192], 6
                        mov              rax, qword ptr [rip + .Lx1822_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n1658_lit_integer_α
.Lx1822_0:
                        .quad            79
#-----------------------------------------------------------------------------------------------------------------------
n1658_lit_integer_α:
                        mov              qword ptr [rbp + 4208], 6
                        mov              rax, qword ptr [rip + .Lx1823_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n1659_lit_integer_α
.Lx1823_0:
                        .quad            83
#-----------------------------------------------------------------------------------------------------------------------
n1659_lit_integer_α:
                        mov              qword ptr [rbp + 4224], 6
                        mov              rax, qword ptr [rip + .Lx1824_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n1660_lit_integer_α
.Lx1824_0:
                        .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n1660_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 6
                        mov              rax, qword ptr [rip + .Lx1825_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n1661_make_list_α
.Lx1825_0:
                        .quad            97
#-----------------------------------------------------------------------------------------------------------------------
n1661_make_list_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 3688], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3752], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 25
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n1662_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1662_assign_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                                                                                        jmp   n1663_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1663_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1830:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1830]
                        lea              rsi, [rbp + 3424]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    n1664_call_proc_staged_α
                                                                                        jmp   n1664_call_proc_staged_α
n1663_call_builtin_icon_β:
                                                                                        jmp   n1664_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1664_call_proc_staged_α:
                        call             proc_compiler_dcα
                                                                                        jmp   .Lx1832_2
.Lx1832_2:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    n1665_call_builtin_icon_α
                                                                                        jmp   n1665_call_builtin_icon_α
n1664_call_proc_staged_β:
                                                                                        jmp   n1665_call_builtin_icon_α
.Lx1832_0:
                        .quad            .Lx1832_0_s
.Lx1832_0_s:
                        .string          "compiler"
#-----------------------------------------------------------------------------------------------------------------------
n1665_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1834:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1834]
                        lea              rsi, [rbp + 3360]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n1666_call_proc_staged_α
                                                                                        jmp   n1666_call_proc_staged_α
n1665_call_builtin_icon_β:
                                                                                        jmp   n1666_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1666_call_proc_staged_α:
                        call             proc_boundaries_dcα
                                                                                        jmp   .Lx1836_2
.Lx1836_2:
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    n1667_call_builtin_icon_α
                                                                                        jmp   n1667_call_builtin_icon_α
n1666_call_proc_staged_β:
                                                                                        jmp   n1667_call_builtin_icon_α
.Lx1836_0:
                        .quad            .Lx1836_0_s
.Lx1836_0_s:
                        .string          "boundaries"
#-----------------------------------------------------------------------------------------------------------------------
n1667_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1838:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1838]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 99
                                                                                        je    n1668_lit_integer_α
                                                                                        jmp   n1668_lit_integer_α
n1667_call_builtin_icon_β:
                                                                                        jmp   n1668_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1668_lit_integer_α:
                        mov              qword ptr [rbp + 3232], 6
                        mov              rax, qword ptr [rip + .Lx1839_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n1669_lit_integer_α
.Lx1839_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1669_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx1840_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n1670_lit_integer_α
.Lx1840_0:
                        .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n1670_lit_integer_α:
                        mov              qword ptr [rbp + 3264], 6
                        mov              rax, qword ptr [rip + .Lx1841_0]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n1671_to_by_α
.Lx1841_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1671_to_by_α:
                        mov              rdi, qword ptr [rbp + 3232]
                        mov              rsi, qword ptr [rbp + 3240]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3232], 6
                        mov              qword ptr [rbp + 3240], rax
                        mov              rdi, qword ptr [rbp + 3248]
                        mov              rsi, qword ptr [rbp + 3256]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3248], 6
                        mov              qword ptr [rbp + 3256], rax
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3264], 6
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3216], rax
.Lx1843_0:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rcx, qword ptr [rbp + 3256]
                        mov              rdx, qword ptr [rbp + 3272]
                        cmp              rdx, 0
                                                                                        jl    .Lx1843_1
                        cmp              rax, rcx
                                                                                        jg    n1673_call_builtin_icon_α
                                                                                        jmp   .Lx1843_2
.Lx1843_1:
                        cmp              rax, rcx
                                                                                        jl    n1673_call_builtin_icon_α
.Lx1843_2:
                        mov              qword ptr [rbp + 3200], 6
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n1672_call_proc_staged_α
n1671_to_by_β:
                        mov              rdx, qword ptr [rbp + 3272]
                        mov              rax, qword ptr [rbp + 3216]
                        add              rax, rdx
                        mov              qword ptr [rbp + 3216], rax
                                                                                        jmp   .Lx1843_0
#-----------------------------------------------------------------------------------------------------------------------
n1672_call_proc_staged_α:
                        lea              rsi, [rbp + 3200]
                        call             proc_fact_dcα
                                                                                        jmp   .Lx1845_2
.Lx1845_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n1671_to_by_β
                                                                                        jmp   n1671_to_by_β
n1672_call_proc_staged_β:
                                                                                        jmp   n1671_to_by_β
.Lx1845_0:
                        .quad            .Lx1845_0_s
.Lx1845_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n1673_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1847:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1847]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n1674_lit_integer_α
                                                                                        jmp   n1674_lit_integer_α
n1673_call_builtin_icon_β:
                                                                                        jmp   n1674_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1674_lit_integer_α:
                        mov              qword ptr [rbp + 3072], 6
                        mov              rax, qword ptr [rip + .Lx1848_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n1675_lit_integer_α
.Lx1848_0:
                        .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n1675_lit_integer_α:
                        mov              qword ptr [rbp + 3088], 6
                        mov              rax, qword ptr [rip + .Lx1849_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n1676_lit_integer_α
.Lx1849_0:
                        .quad            341
#-----------------------------------------------------------------------------------------------------------------------
n1676_lit_integer_α:
                        mov              qword ptr [rbp + 3104], 6
                        mov              rax, qword ptr [rip + .Lx1850_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n1677_to_by_α
.Lx1850_0:
                        .quad            34
#-----------------------------------------------------------------------------------------------------------------------
n1677_to_by_α:
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3072], 6
                        mov              qword ptr [rbp + 3080], rax
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3088], 6
                        mov              qword ptr [rbp + 3096], rax
                        mov              rdi, qword ptr [rbp + 3104]
                        mov              rsi, qword ptr [rbp + 3112]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3104], 6
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3056], rax
.Lx1852_0:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              rcx, qword ptr [rbp + 3096]
                        mov              rdx, qword ptr [rbp + 3112]
                        cmp              rdx, 0
                                                                                        jl    .Lx1852_1
                        cmp              rax, rcx
                                                                                        jg    n1679_call_builtin_icon_α
                                                                                        jmp   .Lx1852_2
.Lx1852_1:
                        cmp              rax, rcx
                                                                                        jl    n1679_call_builtin_icon_α
.Lx1852_2:
                        mov              qword ptr [rbp + 3040], 6
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n1678_call_proc_staged_α
n1677_to_by_β:
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              rax, qword ptr [rbp + 3056]
                        add              rax, rdx
                        mov              qword ptr [rbp + 3056], rax
                                                                                        jmp   .Lx1852_0
#-----------------------------------------------------------------------------------------------------------------------
n1678_call_proc_staged_α:
                        lea              rsi, [rbp + 3040]
                        call             proc_fib_dcα
                                                                                        jmp   .Lx1854_2
.Lx1854_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n1677_to_by_β
                                                                                        jmp   n1677_to_by_β
n1678_call_proc_staged_β:
                                                                                        jmp   n1677_to_by_β
.Lx1854_0:
                        .quad            .Lx1854_0_s
.Lx1854_0_s:
                        .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n1679_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1856:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1856]
                        lea              rsi, [rbp + 2976]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    n1680_disjunction_α
                                                                                        jmp   n1680_disjunction_α
n1679_call_builtin_icon_β:
                                                                                        jmp   n1680_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1680_disjunction_α:
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              dword ptr [rbp + 2880], 0
                                                                                        jmp   n1683_lit_integer_α
n1680_disjunction_as:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        jne   .Lx1858_0
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n1681_call_proc_staged_α
.Lx1858_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1858_1
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n1681_call_proc_staged_α
.Lx1858_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1858_2
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n1681_call_proc_staged_α
.Lx1858_2:
                        cmp              eax, 3
                                                                                        jne   .Lx1858_3
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n1681_call_proc_staged_α
.Lx1858_3:
                                                                                        jmp   n1681_call_proc_staged_α
n1680_disjunction_β:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        je    n1680_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1680_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1680_disjunction_af
                                                                                        jmp   n1680_disjunction_af
n1680_disjunction_af:
                        add              dword ptr [rbp + 2880], 1
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 1
                                                                                        je    n1684_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n1685_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n1686_lit_integer_α
                                                                                        jmp   n1682_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1681_call_proc_staged_α:
                        lea              rsi, [rbp + 2864]
                        call             proc_mersenne_dcα
                                                                                        jmp   .Lx1860_2
.Lx1860_2:
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n1680_disjunction_β
                                                                                        jmp   n1680_disjunction_β
n1681_call_proc_staged_β:
                                                                                        jmp   n1680_disjunction_β
.Lx1860_0:
                        .quad            .Lx1860_0_s
.Lx1860_0_s:
                        .string          "mersenne"
#-----------------------------------------------------------------------------------------------------------------------
n1682_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1862:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1862]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n1687_disjunction_α
                                                                                        jmp   n1687_disjunction_α
n1682_call_builtin_icon_β:
                                                                                        jmp   n1687_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1683_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx1863_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n1680_disjunction_as
n1683_lit_integer_β:
                                                                                        jmp   n1680_disjunction_af
.Lx1863_0:
                        .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n1684_lit_integer_α:
                        mov              qword ptr [rbp + 2912], 6
                        mov              rax, qword ptr [rip + .Lx1864_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n1680_disjunction_as
n1684_lit_integer_β:
                                                                                        jmp   n1680_disjunction_af
.Lx1864_0:
                        .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n1685_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 6
                        mov              rax, qword ptr [rip + .Lx1865_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n1680_disjunction_as
n1685_lit_integer_β:
                                                                                        jmp   n1680_disjunction_af
.Lx1865_0:
                        .quad            107
#-----------------------------------------------------------------------------------------------------------------------
n1686_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 6
                        mov              rax, qword ptr [rip + .Lx1866_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n1680_disjunction_as
n1686_lit_integer_β:
                                                                                        jmp   n1680_disjunction_af
.Lx1866_0:
                        .quad            127
#-----------------------------------------------------------------------------------------------------------------------
n1687_disjunction_α:
                        mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              dword ptr [rbp + 2704], 0
                                                                                        jmp   n1690_lit_integer_α
n1687_disjunction_as:
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 0
                                                                                        jne   .Lx1868_0
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n1688_call_proc_staged_α
.Lx1868_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1868_1
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n1688_call_proc_staged_α
.Lx1868_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1868_2
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n1688_call_proc_staged_α
.Lx1868_2:
                        cmp              eax, 3
                                                                                        jne   .Lx1868_3
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n1688_call_proc_staged_α
.Lx1868_3:
                                                                                        jmp   n1688_call_proc_staged_α
n1687_disjunction_β:
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 0
                                                                                        je    n1687_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1687_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1687_disjunction_af
                                                                                        jmp   n1687_disjunction_af
n1687_disjunction_af:
                        add              dword ptr [rbp + 2704], 1
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 1
                                                                                        je    n1691_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n1692_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n1693_lit_integer_α
                                                                                        jmp   n1689_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1688_call_proc_staged_α:
                        lea              rsi, [rbp + 2688]
                        call             proc_perfect_dcα
                                                                                        jmp   .Lx1870_2
.Lx1870_2:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n1687_disjunction_β
                                                                                        jmp   n1687_disjunction_β
n1688_call_proc_staged_β:
                                                                                        jmp   n1687_disjunction_β
.Lx1870_0:
                        .quad            .Lx1870_0_s
.Lx1870_0_s:
                        .string          "perfect"
#-----------------------------------------------------------------------------------------------------------------------
n1689_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1872:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1872]
                        lea              rsi, [rbp + 2624]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n1694_lit_integer_α
                                                                                        jmp   n1694_lit_integer_α
n1689_call_builtin_icon_β:
                                                                                        jmp   n1694_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1690_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 6
                        mov              rax, qword ptr [rip + .Lx1873_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n1687_disjunction_as
n1690_lit_integer_β:
                                                                                        jmp   n1687_disjunction_af
.Lx1873_0:
                        .quad            31
#-----------------------------------------------------------------------------------------------------------------------
n1691_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx1874_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n1687_disjunction_as
n1691_lit_integer_β:
                                                                                        jmp   n1687_disjunction_af
.Lx1874_0:
                        .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n1692_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx1875_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n1687_disjunction_as
n1692_lit_integer_β:
                                                                                        jmp   n1687_disjunction_af
.Lx1875_0:
                        .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n1693_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx1876_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n1687_disjunction_as
n1693_lit_integer_β:
                                                                                        jmp   n1687_disjunction_af
.Lx1876_0:
                        .quad            107
#-----------------------------------------------------------------------------------------------------------------------
n1694_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx1877_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n1695_lit_integer_α
.Lx1877_0:
                        .quad            11213
#-----------------------------------------------------------------------------------------------------------------------
n1695_lit_integer_α:
                        mov              qword ptr [rbp + 2576], 6
                        mov              rax, qword ptr [rip + .Lx1878_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n1696_lit_integer_α
.Lx1878_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1696_lit_integer_α:
                        mov              qword ptr [rbp + 2592], 6
                        mov              rax, qword ptr [rip + .Lx1879_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n1697_to_α
.Lx1879_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n1697_to_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2576], 6
                        mov              qword ptr [rbp + 2584], rax
                        mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2592], 6
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2560], rax
.Lx1881_0:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rcx, qword ptr [rbp + 2600]
                        cmp              rax, rcx
                                                                                        jg    n1699_call_builtin_icon_α
                        mov              qword ptr [rbp + 2544], 6
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n1698_call_proc_staged_α
n1697_to_β:
                        inc              qword ptr [rbp + 2560]
                                                                                        jmp   .Lx1881_0
#-----------------------------------------------------------------------------------------------------------------------
n1698_call_proc_staged_α:
                        lea              rsi, [rbp + 2528]
                        lea              rdx, [rbp + 2544]
                        call             proc_power_dcα
                                                                                        jmp   .Lx1883_2
.Lx1883_2:
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n1697_to_β
                                                                                        jmp   n1697_to_β
n1698_call_proc_staged_β:
                                                                                        jmp   n1697_to_β
.Lx1883_0:
                        .quad            .Lx1883_0_s
.Lx1883_0_s:
                        .string          "power"
#-----------------------------------------------------------------------------------------------------------------------
n1699_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1885:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1885]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n1700_lit_integer_α
                                                                                        jmp   n1700_lit_integer_α
n1699_call_builtin_icon_β:
                                                                                        jmp   n1700_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1700_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 6
                        mov              rax, qword ptr [rip + .Lx1886_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n1701_lit_integer_α
.Lx1886_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1701_lit_integer_α:
                        mov              qword ptr [rbp + 2400], 6
                        mov              rax, qword ptr [rip + .Lx1887_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n1702_lit_integer_α
.Lx1887_0:
                        .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n1702_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx1888_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n1703_to_α
.Lx1888_0:
                        .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n1703_to_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2400], 6
                        mov              qword ptr [rbp + 2408], rax
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2416], 6
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2384], rax
.Lx1890_0:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2424]
                        cmp              rax, rcx
                                                                                        jg    n1705_call_builtin_icon_α
                        mov              qword ptr [rbp + 2368], 6
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n1704_call_proc_staged_α
n1703_to_β:
                        inc              qword ptr [rbp + 2384]
                                                                                        jmp   .Lx1890_0
#-----------------------------------------------------------------------------------------------------------------------
n1704_call_proc_staged_α:
                        lea              rsi, [rbp + 2352]
                        lea              rdx, [rbp + 2368]
                        call             proc_impower_dcα
                                                                                        jmp   .Lx1892_2
.Lx1892_2:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n1703_to_β
                                                                                        jmp   n1703_to_β
n1704_call_proc_staged_β:
                                                                                        jmp   n1703_to_β
.Lx1892_0:
                        .quad            .Lx1892_0_s
.Lx1892_0_s:
                        .string          "impower"
#-----------------------------------------------------------------------------------------------------------------------
n1705_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1894:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1894]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n1706_var_α
                                                                                        jmp   n1706_var_α
n1705_call_builtin_icon_β:
                                                                                        jmp   n1706_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1706_var_α:
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n1707_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1707_iterate_α:
                        mov              qword ptr [rbp + 2224], 0
.Lx1898_0:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2224]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              rax, 99
                                                                                        je    n1708_call_builtin_icon_α
                                                                                        jmp   n1709_call_proc_staged_α
n1707_iterate_β:
                        inc              qword ptr [rbp + 2224]
                                                                                        jmp   .Lx1898_0
#-----------------------------------------------------------------------------------------------------------------------
n1708_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1900:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1900]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n1710_disjunction_α
                                                                                        jmp   n1710_disjunction_α
n1708_call_builtin_icon_β:
                                                                                        jmp   n1710_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1709_call_proc_staged_α:
                        lea              rsi, [rbp + 2208]
                        call             proc_minpower_dcα
                                                                                        jmp   .Lx1902_2
.Lx1902_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n1707_iterate_β
                                                                                        jmp   n1707_iterate_β
n1709_call_proc_staged_β:
                                                                                        jmp   n1707_iterate_β
.Lx1902_0:
                        .quad            .Lx1902_0_s
.Lx1902_0_s:
                        .string          "minpower"
#-----------------------------------------------------------------------------------------------------------------------
n1710_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n1713_lit_integer_α
n1710_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx1904_0
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1711_call_proc_staged_α
.Lx1904_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1904_1
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1711_call_proc_staged_α
.Lx1904_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1904_2
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1711_call_proc_staged_α
.Lx1904_2:
                        cmp              eax, 3
                                                                                        jne   .Lx1904_3
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1711_call_proc_staged_α
.Lx1904_3:
                        cmp              eax, 4
                                                                                        jne   .Lx1904_4
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1711_call_proc_staged_α
.Lx1904_4:
                        cmp              eax, 5
                                                                                        jne   .Lx1904_5
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1711_call_proc_staged_α
.Lx1904_5:
                                                                                        jmp   n1711_call_proc_staged_α
n1710_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        je    n1710_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1710_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1710_disjunction_af
                        cmp              eax, 3
                                                                                        je    n1710_disjunction_af
                        cmp              eax, 4
                                                                                        je    n1710_disjunction_af
                                                                                        jmp   n1710_disjunction_af
n1710_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 1
                                                                                        je    n1714_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n1715_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n1716_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n1717_lit_integer_α
                        cmp              eax, 5
                                                                                        je    n1718_lit_integer_α
                                                                                        jmp   n1712_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1711_call_proc_staged_α:
                        lea              rsi, [rbp + 1904]
                        call             proc_bigexp_dcα
                                                                                        jmp   .Lx1906_2
.Lx1906_2:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n1710_disjunction_β
                                                                                        jmp   n1710_disjunction_β
n1711_call_proc_staged_β:
                                                                                        jmp   n1710_disjunction_β
.Lx1906_0:
                        .quad            .Lx1906_0_s
.Lx1906_0_s:
                        .string          "bigexp"
#-----------------------------------------------------------------------------------------------------------------------
n1712_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1908:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1908]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n1722_disjunction_α
                                                                                        jmp   n1722_disjunction_α
n1712_call_builtin_icon_β:
                                                                                        jmp   n1722_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1713_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx1909_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n1710_disjunction_as
n1713_lit_integer_β:
                                                                                        jmp   n1710_disjunction_af
.Lx1909_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1714_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx1910_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n1710_disjunction_as
n1714_lit_integer_β:
                                                                                        jmp   n1710_disjunction_af
.Lx1910_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1715_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx1911_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n1710_disjunction_as
n1715_lit_integer_β:
                                                                                        jmp   n1710_disjunction_af
.Lx1911_0:
                        .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1716_lit_integer_α:
                        mov              qword ptr [rbp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx1912_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n1723_lit_integer_α
n1716_lit_integer_β:
                                                                                        jmp   n1710_disjunction_af
.Lx1912_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1717_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx1913_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n1724_lit_integer_α
n1717_lit_integer_β:
                                                                                        jmp   n1710_disjunction_af
.Lx1913_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1718_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx1914_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n1725_lit_integer_α
n1718_lit_integer_β:
                                                                                        jmp   n1710_disjunction_af
.Lx1914_0:
                        .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1719_binop_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1710_disjunction_af
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n1710_disjunction_as
n1719_binop_β:
                                                                                        jmp   n1710_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1720_binop_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2064]
                        mov              rcx, qword ptr [rbp + 2072]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1710_disjunction_af
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n1710_disjunction_as
n1720_binop_β:
                                                                                        jmp   n1710_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1721_binop_α:
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1710_disjunction_af
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n1710_disjunction_as
n1721_binop_β:
                                                                                        jmp   n1710_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1722_disjunction_α:
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              dword ptr [rbp + 1648], 0
                                                                                        jmp   n1728_lit_integer_α
n1722_disjunction_as:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0
                                                                                        jne   .Lx1919_0
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1919_1
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_1:
                        cmp              eax, 2
                                                                                        jne   .Lx1919_2
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_2:
                        cmp              eax, 3
                                                                                        jne   .Lx1919_3
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_3:
                        cmp              eax, 4
                                                                                        jne   .Lx1919_4
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_4:
                        cmp              eax, 5
                                                                                        jne   .Lx1919_5
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_5:
                        cmp              eax, 6
                                                                                        jne   .Lx1919_6
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_6:
                        cmp              eax, 7
                                                                                        jne   .Lx1919_7
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_7:
                        cmp              eax, 8
                                                                                        jne   .Lx1919_8
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_8:
                        cmp              eax, 9
                                                                                        jne   .Lx1919_9
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1726_call_proc_staged_α
.Lx1919_9:
                                                                                        jmp   n1726_call_proc_staged_α
n1722_disjunction_β:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 3
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 4
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 5
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 6
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 7
                                                                                        je    n1722_disjunction_af
                        cmp              eax, 8
                                                                                        je    n1722_disjunction_af
                                                                                        jmp   n1722_disjunction_af
n1722_disjunction_af:
                        add              dword ptr [rbp + 1648], 1
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 1
                                                                                        je    n1729_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n1730_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n1731_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n1732_lit_integer_α
                        cmp              eax, 5
                                                                                        je    n1733_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n1734_lit_integer_α
                        cmp              eax, 7
                                                                                        je    n1735_lit_integer_α
                        cmp              eax, 8
                                                                                        je    n1736_lit_integer_α
                        cmp              eax, 9
                                                                                        je    n1737_lit_integer_α
                                                                                        jmp   n1727_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1723_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx1920_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n1719_binop_α
.Lx1920_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n1724_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx1921_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n1720_binop_α
.Lx1921_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n1725_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx1922_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n1721_binop_α
.Lx1922_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1726_call_proc_staged_α:
                        lea              rsi, [rbp + 1632]
                        call             proc_tmul_dcα
                                                                                        jmp   .Lx1924_2
.Lx1924_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n1722_disjunction_β
                                                                                        jmp   n1722_disjunction_β
n1726_call_proc_staged_β:
                                                                                        jmp   n1722_disjunction_β
.Lx1924_0:
                        .quad            .Lx1924_0_s
.Lx1924_0_s:
                        .string          "tmul"
#-----------------------------------------------------------------------------------------------------------------------
n1727_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1926:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1926]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n1738_lit_integer_α
                                                                                        jmp   n1738_lit_integer_α
n1727_call_builtin_icon_β:
                                                                                        jmp   n1738_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1728_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx1927_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1722_disjunction_as
n1728_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1927_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1729_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx1928_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n1722_disjunction_as
n1729_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1928_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1730_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx1929_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n1722_disjunction_as
n1730_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1929_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1731_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx1930_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n1722_disjunction_as
n1731_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1930_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1732_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx1931_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n1722_disjunction_as
n1732_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1931_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1733_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx1932_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n1722_disjunction_as
n1733_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1932_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n1734_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx1933_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n1722_disjunction_as
n1734_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1933_0:
                        .quad            51
#-----------------------------------------------------------------------------------------------------------------------
n1735_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx1934_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n1722_disjunction_as
n1735_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1934_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n1736_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx1935_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n1722_disjunction_as
n1736_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1935_0:
                        .quad            18446744073709551605
#-----------------------------------------------------------------------------------------------------------------------
n1737_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx1936_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n1722_disjunction_as
n1737_lit_integer_β:
                                                                                        jmp   n1722_disjunction_af
.Lx1936_0:
                        .quad            18446744073709551573
#-----------------------------------------------------------------------------------------------------------------------
n1738_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx1937_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n1739_lit_integer_α
.Lx1937_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1739_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx1938_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n1740_lit_integer_α
.Lx1938_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1740_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx1939_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n1741_to_α
.Lx1939_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n1741_to_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1520], 6
                        mov              qword ptr [rbp + 1528], rax
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1536], 6
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1504], rax
.Lx1941_0:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1544]
                        cmp              rax, rcx
                                                                                        jg    n1743_call_builtin_icon_α
                        mov              qword ptr [rbp + 1488], 6
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n1742_op75_α
n1741_to_β:
                        inc              qword ptr [rbp + 1504]
                                                                                        jmp   .Lx1941_0
#-----------------------------------------------------------------------------------------------------------------------
n1742_op75_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 7
                                                                                        je    .Lx1943_1
                        cmp              eax, 6
                                                                                        jne   .Lx1943_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 6
                                                                                        jne   .Lx1943_0
.Lx1943_1:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n1744_binop_α
.Lx1943_0:
                        lea              rdi, [rbp + 1488]
                        lea              rsi, [rbp + 1472]
                        lea              rdx, [rbp + 1456]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1744_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1743_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1945:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1945]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n1745_disjunction_α
                                                                                        jmp   n1745_disjunction_α
n1743_call_builtin_icon_β:
                                                                                        jmp   n1745_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1744_binop_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1743_call_builtin_icon_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n1746_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1745_disjunction_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   n1749_lit_integer_α
n1745_disjunction_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx1948_0
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1747_call_proc_staged_α
.Lx1948_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1948_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1747_call_proc_staged_α
.Lx1948_1:
                                                                                        jmp   n1747_call_proc_staged_α
n1745_disjunction_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    n1750_to_β
                                                                                        jmp   n1752_to_β
n1745_disjunction_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    n1751_lit_integer_α
                                                                                        jmp   n1748_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1746_call_proc_staged_α:
                        lea              rsi, [rbp + 1440]
                        call             proc_tmul_dcα
                                                                                        jmp   .Lx1950_2
.Lx1950_2:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n1741_to_β
                                                                                        jmp   n1741_to_β
n1746_call_proc_staged_β:
                                                                                        jmp   n1741_to_β
.Lx1950_0:
                        .quad            .Lx1950_0_s
.Lx1950_0_s:
                        .string          "tmul"
#-----------------------------------------------------------------------------------------------------------------------
n1747_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        call             proc_conv_dcα
                                                                                        jmp   .Lx1952_2
.Lx1952_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n1745_disjunction_β
                                                                                        jmp   n1745_disjunction_β
n1747_call_proc_staged_β:
                                                                                        jmp   n1745_disjunction_β
.Lx1952_0:
                        .quad            .Lx1952_0_s
.Lx1952_0_s:
                        .string          "conv"
#-----------------------------------------------------------------------------------------------------------------------
n1748_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1954:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1954]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n1755_call_proc_staged_α
                                                                                        jmp   n1755_call_proc_staged_α
n1748_call_builtin_icon_β:
                                                                                        jmp   n1755_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1749_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx1955_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n1756_lit_integer_α
n1749_lit_integer_β:
                                                                                        jmp   n1745_disjunction_af
.Lx1955_0:
                        .quad            787
#-----------------------------------------------------------------------------------------------------------------------
n1750_to_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1216], 6
                        mov              qword ptr [rbp + 1224], rax
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1232], 6
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1200], rax
.Lx1957_0:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1240]
                        cmp              rax, rcx
                                                                                        jg    n1745_disjunction_af
                        mov              qword ptr [rbp + 1184], 6
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n1757_op75_α
n1750_to_β:
                        inc              qword ptr [rbp + 1200]
                                                                                        jmp   .Lx1957_0
#-----------------------------------------------------------------------------------------------------------------------
n1751_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx1958_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n1758_lit_integer_α
n1751_lit_integer_β:
                                                                                        jmp   n1745_disjunction_af
.Lx1958_0:
                        .quad            18446744073709545835
#-----------------------------------------------------------------------------------------------------------------------
n1752_to_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1328], 6
                        mov              qword ptr [rbp + 1336], rax
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1344], 6
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1312], rax
.Lx1960_0:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1352]
                        cmp              rax, rcx
                                                                                        jg    n1745_disjunction_af
                        mov              qword ptr [rbp + 1296], 6
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n1759_op75_α
n1752_to_β:
                        inc              qword ptr [rbp + 1312]
                                                                                        jmp   .Lx1960_0
#-----------------------------------------------------------------------------------------------------------------------
n1753_binop_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1745_disjunction_af
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n1745_disjunction_as
n1753_binop_β:
                                                                                        jmp   n1745_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1754_binop_α:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1745_disjunction_af
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n1745_disjunction_as
n1754_binop_β:
                                                                                        jmp   n1745_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1755_call_proc_staged_α:
                        call             proc_radix_dcα
                                                                                        jmp   .Lx1964_2
.Lx1964_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n1760_call_builtin_icon_α
                                                                                        jmp   n1760_call_builtin_icon_α
n1755_call_proc_staged_β:
                                                                                        jmp   n1760_call_builtin_icon_α
.Lx1964_0:
                        .quad            .Lx1964_0_s
.Lx1964_0_s:
                        .string          "radix"
#-----------------------------------------------------------------------------------------------------------------------
n1756_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx1965_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n1761_lit_integer_α
.Lx1965_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1757_op75_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 7
                                                                                        je    .Lx1967_1
                        cmp              eax, 6
                                                                                        jne   .Lx1967_0
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx1967_0
.Lx1967_1:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n1753_binop_α
.Lx1967_0:
                        lea              rdi, [rbp + 1184]
                        lea              rsi, [rbp + 1168]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1753_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1758_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx1968_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n1762_lit_integer_α
.Lx1968_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1759_op75_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 7
                                                                                        je    .Lx1970_1
                        cmp              eax, 6
                                                                                        jne   .Lx1970_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 6
                                                                                        jne   .Lx1970_0
.Lx1970_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n1754_binop_α
.Lx1970_0:
                        lea              rdi, [rbp + 1296]
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1264]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1754_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1760_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1972:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1972]
                        lea              rsi, [rbp + 976]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n1763_call_proc_staged_α
                                                                                        jmp   n1763_call_proc_staged_α
n1760_call_builtin_icon_β:
                                                                                        jmp   n1763_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1761_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx1973_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n1750_to_α
.Lx1973_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n1762_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx1974_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n1752_to_α
.Lx1974_0:
                        .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n1763_call_proc_staged_α:
                        call             proc_over_dcα
                                                                                        jmp   .Lx1976_2
.Lx1976_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n1764_lit_integer_α
                                                                                        jmp   n1764_lit_integer_α
n1763_call_proc_staged_β:
                                                                                        jmp   n1764_lit_integer_α
.Lx1976_0:
                        .quad            .Lx1976_0_s
.Lx1976_0_s:
                        .string          "over"
#-----------------------------------------------------------------------------------------------------------------------
n1764_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx1977_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1765_lit_real_α
.Lx1977_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n1765_lit_real_α:
                        mov              qword ptr [rbp + 768], 7
                        mov              rax, qword ptr [rip + .Lx1978_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1766_lit_integer_α
.Lx1978_0:
                        .quad            4617315517961601024
#-----------------------------------------------------------------------------------------------------------------------
n1766_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx1979_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1767_lit_integer_α
.Lx1979_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1767_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx1980_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1768_binop_α
.Lx1980_0:
                        .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n1768_binop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1770_lit_integer_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1769_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1769_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx1982_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n1771_lit_integer_α
.Lx1982_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1770_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx1983_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1772_lit_real_α
.Lx1983_0:
                        .quad            73
#-----------------------------------------------------------------------------------------------------------------------
n1771_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx1984_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n1773_binop_α
.Lx1984_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n1772_lit_real_α:
                        mov              qword ptr [rbp + 528], 7
                        mov              rax, qword ptr [rip + .Lx1985_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1774_lit_integer_α
.Lx1985_0:
                        .quad            4621256167635550208
#-----------------------------------------------------------------------------------------------------------------------
n1773_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1770_lit_integer_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n1775_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1774_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx1987_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1776_lit_integer_α
.Lx1987_0:
                        .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1775_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx1988_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1777_lit_integer_α
.Lx1988_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1776_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx1989_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n1778_binop_α
.Lx1989_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1777_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx1990_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n1779_binop_α
.Lx1990_0:
                        .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n1778_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1781_call_builtin_icon_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1780_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1779_binop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1770_lit_integer_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n1782_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n1780_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx1993_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1783_lit_integer_α
.Lx1993_0:
                        .quad            6289078614652622815
#-----------------------------------------------------------------------------------------------------------------------
n1781_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1995:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1995]
                        lea              rsi, [rbp + 384]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n1784_disjunction_α
                                                                                        jmp   n1784_disjunction_α
n1781_call_builtin_icon_β:
                                                                                        jmp   n1784_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1782_make_list_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n1785_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1783_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx1998_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n1786_lit_integer_α
.Lx1998_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n1784_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n1789_var_α
n1784_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx2000_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1787_call_proc_staged_α
.Lx2000_0:
                        cmp              eax, 1
                                                                                        jne   .Lx2000_1
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1787_call_proc_staged_α
.Lx2000_1:
                                                                                        jmp   n1787_call_proc_staged_α
n1784_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    n1790_iterate_β
                                                                                        jmp   n1792_iterate_β
n1784_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    n1791_var_α
                                                                                        jmp   n1788_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1785_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n1770_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1786_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx2002_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1793_binop_α
.Lx2002_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n1787_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_unops_dcα
                                                                                        jmp   .Lx2004_2
.Lx2004_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n1784_disjunction_β
                                                                                        jmp   n1784_disjunction_β
n1787_call_proc_staged_β:
                                                                                        jmp   n1784_disjunction_β
.Lx2004_0:
                        .quad            .Lx2004_0_s
.Lx2004_0_s:
                        .string          "unops"
#-----------------------------------------------------------------------------------------------------------------------
n1788_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn2006:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2006]
                        lea              rsi, [rbp + 176]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1794_var_α
                                                                                        jmp   n1794_var_α
n1788_call_builtin_icon_β:
                                                                                        jmp   n1794_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1789_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1790_iterate_α
n1789_var_β:
                                                                                        jmp   n1784_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1790_iterate_α:
                        mov              qword ptr [rbp + 288], 0
.Lx2010_0:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 288]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              rax, 99
                                                                                        je    n1784_disjunction_af
                                                                                        jmp   n1784_disjunction_as
n1790_iterate_β:
                        inc              qword ptr [rbp + 288]
                                                                                        jmp   .Lx2010_0
#-----------------------------------------------------------------------------------------------------------------------
n1791_var_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1792_iterate_α
n1791_var_β:
                                                                                        jmp   n1784_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1792_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx2014_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        je    n1784_disjunction_af
                                                                                        jmp   n1784_disjunction_as
n1792_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx2014_0
#-----------------------------------------------------------------------------------------------------------------------
n1793_binop_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n1781_call_builtin_icon_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n1795_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n1794_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1796_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1795_make_list_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n1797_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1796_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx2021_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1798_var_α
n1796_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx2021_0
#-----------------------------------------------------------------------------------------------------------------------
n1797_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n1781_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1798_var_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1799_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1799_iterate_α:
                        mov              qword ptr [rbp + 128], 0
.Lx2026_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 128]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              rax, 99
                                                                                        je    n1796_iterate_β
                                                                                        jmp   n1800_call_proc_staged_α
n1799_iterate_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx2026_0
#-----------------------------------------------------------------------------------------------------------------------
n1800_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 112]
                        call             proc_binops_dcα
                                                                                        jmp   .Lx2028_2
.Lx2028_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1799_iterate_β
                                                                                        jmp   n1799_iterate_β
n1800_call_proc_staged_β:
                                                                                        jmp   n1799_iterate_β
.Lx2028_0:
                        .quad            .Lx2028_0_s
.Lx2028_0_s:
                        .string          "binops"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4304]
                        add              rsp, 4312
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4304]
                        add              rsp, 4312
                        ret
                        .section         .note.GNU-stack,"",@progbits
