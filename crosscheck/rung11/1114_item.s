                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "aaa"
.Lgvan1:                .string          "ama"
.Lgvan2:                .string          "tt"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
                        sub              rsp, 2360
                        mov              rdi, rsp
                        mov              ecx, 2360
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#         aaa = ARRAY(10)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n8_call_α
.Lx117_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n9_var_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n10_var_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n11_lit_string_α
n3_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n12_var_α
n4_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n13_var_α
n5_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:
                                                                                        jmp   n14_call_α
n6_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_α:
                                                                                        jmp   n15_lit_string_α
n7_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn126:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n17_var_α
                                                                                        jmp   n16_assign_α
n8_call_β:
                                                                                        jmp   n17_var_α
#=======================================================================================================================
#         DIFFER(aaa<1>, 5)                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n18_lit_integer_α
#=======================================================================================================================
#         aaa<2> = 22
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n19_lit_integer_α
#=======================================================================================================================
#         ama = ARRAY('2,2,2,2')
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rsp + 832], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n21_call_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "2,2,2,2"
#=======================================================================================================================
#         DIFFER(ama<1,2,1,2>, 1212)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                                                                                        jmp   n22_lit_integer_α
#=======================================================================================================================
#         ama<2,1,2,1> = 2121
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                                                                                        jmp   n23_lit_integer_α
#=======================================================================================================================
#         tt = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
                        .section         .rodata
.Lrkfn133:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n26_var_α
                                                                                        jmp   n25_assign_α
n14_call_β:
                                                                                        jmp   n26_var_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1114_item (7/7)'
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "PASS 1114_item (7/7)"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n17_var_α
#=======================================================================================================================
#         aaa = ARRAY(10)
#         ITEM(aaa, 1) = 5
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 432], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n30_subscript_α
.Lx137_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 528], 6
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n31_subscript_α
.Lx138_0:
                        .quad            2
#=======================================================================================================================
#         DIFFER(ITEM(aaa, 2), 22)                   :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                                                                                        jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn141:              .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n34_var_α
                                                                                        jmp   n33_assign_α
n21_call_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rsp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 1400], rax
                                                                                        jmp   n35_subscript_α
.Lx142_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rsp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 1592], rax
                                                                                        jmp   n36_subscript_α
.Lx143_0:
                        .quad            2
#=======================================================================================================================
#         DIFFER(ITEM(ama, 2,1,2,1), 2121)                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                                                                                        jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n26_var_α
#=======================================================================================================================
#         ITEM(tt, 'key') = 'val'
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx147_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n40_subscript_α
.Lx148_0:
                        .quad            1
#=======================================================================================================================
#         DIFFER(ITEM(aaa, 1), 5)                   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_var_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n42_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n20_var_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rsp + 736], 6
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n44_call_α
.Lx152_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n34_var_α
#=======================================================================================================================
#         ITEM(ama, 1,2,1,2) = 1212
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 1392]
                        mov              rcx, qword ptr [rsp + 1400]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n24_var_α
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                                                                                        jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rsp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 1944], rax
                                                                                        jmp   n49_lit_integer_α
.Lx157_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rsp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 2088], rax
                                                                                        jmp   n50_subscript_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "key"
#=======================================================================================================================
#         DIFFER(ITEM(tt, 'key'), 'val')                   :f(e007)
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n29_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 304], 6
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n53_call_α
.Lx161_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_deref_α:
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n10_var_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n55_assign_var_α
.Lx163_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn165:              .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n56_lit_integer_α
n44_call_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rsp + 864], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n57_subscript_α
.Lx166_0:
                        .quad            1
#=======================================================================================================================
#         DIFFER(ITEM(ama, 1,2,1,2), 1212)                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n59_subscript_α
.Lx168_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rsp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n60_subscript_α
.Lx169_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rsp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 1960], rax
                                                                                        jmp   n61_lit_integer_α
.Lx170_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:
                        mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n39_var_α
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rsp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 2296], rax
                                                                                        jmp   n63_call_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "key"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n64_assign_var_α
.Lx173_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn175:              .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n9_var_α
                                                                                        jmp   n65_lit_integer_α
n53_call_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rsp + 480], 6
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n66_call_α
.Lx176_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_var_α:
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n20_var_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rsp + 752], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n67_call_α
.Lx178_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n57_subscript_α:
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n46_var_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rsp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n69_lit_integer_α
.Lx180_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1424]
                        mov              rcx, qword ptr [rsp + 1432]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1616]
                        mov              rcx, qword ptr [rsp + 1624]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n24_var_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                                                                                        jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rsp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 1976], rax
                                                                                        jmp   n72_lit_integer_α
.Lx183_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rsp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 2120], rax
                                                                                        jmp   n73_assign_var_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "val"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn186:              .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n74_lit_string_α
n63_call_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_var_α:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n29_var_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        mov              qword ptr [rsp + 320], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n75_call_α
.Lx188_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn190:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rsp + 368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n10_var_α
                                                                                        jmp   n76_lit_string_α
n66_call_β:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn192:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n77_lit_string_α
n67_call_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rsp + 896], 6
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n78_subscript_α
.Lx193_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        mov              qword ptr [rsp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n79_lit_integer_α
.Lx194_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rsp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n80_subscript_α
.Lx195_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rsp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 1656], rax
                                                                                        jmp   n81_subscript_α
.Lx196_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rsp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   n82_call_α
.Lx197_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_var_α:
                        mov              rdi, qword ptr [rsp + 2096]
                        mov              rsi, qword ptr [rsp + 2104]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n39_var_α
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rsp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 2312], rax
                                                                                        jmp   n83_call_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "val"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn201:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n9_var_α
                                                                                        jmp   n84_lit_string_α
n75_call_β:
                                                                                        jmp   n9_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/002: item == bracket read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n85_assign_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "FAIL 1114/002: item == bracket read"
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/003: bracket assign, item read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_assign_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "FAIL 1114/003: bracket assign, item read"
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n46_var_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rsp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n88_lit_integer_α
.Lx205_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                                                                                        jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:
                        mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n24_var_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn209:              .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n14_call_α
                                                                                        jmp   n91_lit_integer_α
n82_call_β:
                                                                                        jmp   n14_call_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn211:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n92_lit_string_α
n83_call_β:
                                                                                        jmp   n15_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/001: item 1D assign/read'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_assign_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "FAIL 1114/001: item 1D assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rsp + 928], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n94_subscript_α
.Lx215_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n95_call_α
.Lx216_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rsp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 1496], rax
                                                                                        jmp   n96_subscript_α
.Lx217_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rsp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 1688], rax
                                                                                        jmp   n97_subscript_α
.Lx218_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rsp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n98_call_α
.Lx219_0:
                        .quad            2121
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/007: item on table'        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_assign_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "FAIL 1114/007: item on table"
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx221_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n94_subscript_α:
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n46_var_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn224:              .string          "ITEM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n12_var_α
                                                                                        jmp   n101_lit_integer_α
n95_call_β:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              rdx, qword ptr [rsp + 1488]
                        mov              rcx, qword ptr [rsp + 1496]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                                                                                        jmp   n102_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_subscript_α:
                        mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n24_var_α
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                                                                                        jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn228:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n14_call_α
                                                                                        jmp   n104_lit_string_α
n98_call_β:
                                                                                        jmp   n14_call_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx229_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 960], 6
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n105_subscript_α
.Lx230_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rsp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n106_call_α
.Lx231_0:
                        .quad            1212
#-----------------------------------------------------------------------------------------------------------------------
n102_deref_α:
                        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n13_var_α
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                                                                                        jmp   n107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n108_assign_var_α
.Lx233_0:
                        .quad            2121
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/006: bracket 4D assign, item read' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "FAIL 1114/006: bracket 4D assign, item read"
#-----------------------------------------------------------------------------------------------------------------------
n105_subscript_α:
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n46_var_α
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n110_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn237:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n12_var_α
                                                                                        jmp   n111_lit_string_α
n106_call_β:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 1544], rax
                                                                                        jmp   n112_call_α
.Lx238_0:
                        .quad            1212
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_var_α:
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n24_var_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx240_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rsp + 992], 6
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   n113_assign_var_α
.Lx241_0:
                        .quad            1212
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/004: item 4D assign/read'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n114_assign_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "FAIL 1114/004: item 4D assign/read"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn244:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n13_var_α
                                                                                        jmp   n115_lit_string_α
n112_call_β:
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_var_α:
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n46_var_α
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx246_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 1114/005: item 4D == bracket'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n116_assign_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "FAIL 1114/005: item 4D == bracket"
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx248_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 2360
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 2360
                        ret
                        .section         .note.GNU-stack,"",@progbits
