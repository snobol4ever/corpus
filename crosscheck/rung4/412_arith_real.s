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
                        sub              rsp, 920
                        mov              rdi, rsp
                        mov              ecx, 920
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         DIFFER(2.0 + 3.0, 5.0)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_real_α:
                        mov              qword ptr [rsp + 80], 7
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n7_lit_real_α
.Lx51_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n8_lit_real_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n9_lit_real_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n10_lit_real_α
n3_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n11_lit_real_α
n4_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n12_lit_real_α
n5_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:
                                                                                        jmp   n13_lit_string_α
n6_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_real_α:
                        mov              qword ptr [rsp + 96], 7
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n14_binop_α
.Lx58_0:
                        .quad            4613937818241073152
#=======================================================================================================================
#         DIFFER(3.0 - 1.0, 2.0)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_real_α:
                        mov              qword ptr [rsp + 240], 7
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n15_lit_real_α
.Lx59_0:
                        .quad            4613937818241073152
#=======================================================================================================================
#         DIFFER(3.0 * 2.0, 6.0)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_real_α:
                        mov              qword ptr [rsp + 384], 7
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n16_lit_real_α
.Lx60_0:
                        .quad            4613937818241073152
#=======================================================================================================================
#         DIFFER(3.0 / 2.0, 1.5)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_real_α:
                        mov              qword ptr [rsp + 528], 7
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n17_lit_real_α
.Lx61_0:
                        .quad            4613937818241073152
#=======================================================================================================================
#         DIFFER(3.0 ** 3, 27.0)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_real_α:
                        mov              qword ptr [rsp + 672], 7
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n18_lit_integer_α
.Lx62_0:
                        .quad            4613937818241073152
#=======================================================================================================================
#         DIFFER(-1.0, 0.0 - 1.0)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_real_α:
                        mov              qword ptr [rsp + 816], 7
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n19_unop_α
.Lx63_0:
                        .quad            4607182418800017408
#=======================================================================================================================
#         OUTPUT = 'PASS 412_arith_real (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "PASS 412_arith_real (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n8_lit_real_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n21_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_real_α:
                        mov              qword ptr [rsp + 256], 7
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n22_binop_α
.Lx66_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_real_α:
                        mov              qword ptr [rsp + 400], 7
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n23_binop_α
.Lx67_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_real_α:
                        mov              qword ptr [rsp + 544], 7
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n24_binop_α
.Lx68_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 688], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n25_binop_α
.Lx69_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_α:
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n26_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_real_α:
                        mov              qword ptr [rsp + 112], 7
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n27_call_α
.Lx72_0:
                        .quad            4617315517961601024
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n9_lit_real_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n28_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n10_lit_real_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n29_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n11_lit_real_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n30_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n12_lit_real_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n31_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_real_α:
                        mov              qword ptr [rsp + 848], 7
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n32_lit_real_α
.Lx77_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn79:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n8_lit_real_α
                                                                                        jmp   n33_lit_string_α
n27_call_β:
                                                                                        jmp   n8_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_real_α:
                        mov              qword ptr [rsp + 272], 7
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n34_call_α
.Lx80_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_real_α:
                        mov              qword ptr [rsp + 416], 7
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n35_call_α
.Lx81_0:
                        .quad            4618441417868443648
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_real_α:
                        mov              qword ptr [rsp + 560], 7
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n36_call_α
.Lx82_0:
                        .quad            4609434218613702656
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_real_α:
                        mov              qword ptr [rsp + 704], 7
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n37_call_α
.Lx83_0:
                        .quad            4628293042053316608
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_real_α:
                        mov              qword ptr [rsp + 864], 7
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n38_binop_α
.Lx84_0:
                        .quad            4607182418800017408
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/001: 2.0+3.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "FAIL 412/001: 2.0+3.0"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn87:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_real_α
                                                                                        jmp   n40_lit_string_α
n34_call_β:
                                                                                        jmp   n9_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn89:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n10_lit_real_α
                                                                                        jmp   n41_lit_string_α
n35_call_β:
                                                                                        jmp   n10_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn91:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_real_α
                                                                                        jmp   n42_lit_string_α
n36_call_β:
                                                                                        jmp   n11_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn93:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n12_lit_real_α
                                                                                        jmp   n43_lit_string_α
n37_call_β:
                                                                                        jmp   n12_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n13_lit_string_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n44_call_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/002: 3.0-1.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_assign_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "FAIL 412/002: 3.0-1.0"
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/003: 3.0*2.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "FAIL 412/003: 3.0*2.0"
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/004: 3.0/2.0'              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "FAIL 412/004: 3.0/2.0"
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/005: 3.0**3'               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_assign_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "FAIL 412/005: 3.0**3"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn101:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n13_lit_string_α
                                                                                        jmp   n49_lit_string_α
n44_call_β:
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx103_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx104_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 412/006: unary minus on real'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "FAIL 412/006: unary minus on real"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx107_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 920
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 920
                        ret
                        .section         .note.GNU-stack,"",@progbits
