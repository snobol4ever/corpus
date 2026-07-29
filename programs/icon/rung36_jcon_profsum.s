                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lookup_α
proc_lookup_α:
                        .global          proc_lookup_α
                        .global          proc_lookup_β
                        .global          proc_lookup_γ
                        .global          proc_lookup_ω
                        sub              rsp, 592
                        mov              [rsp + 568], rcx
                        mov              [rsp + 576], rdx
                        mov              [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 560
                        call             rt_jmp_frame_lexprep2@PLT
proc_lookup_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        jne   .Lx27_0
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1_disjunction_α
.Lx27_0:
                                                                                        jmp   n1_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 416]
                                                                                        jmp   n1_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n4_var_ref_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx29_0
                                                                                        jmp   proc_lookup_ω
.Lx29_0:
                        cmp              eax, 1
                                                                                        jne   .Lx29_1
                                                                                        jmp   proc_lookup_ω
.Lx29_1:
                                                                                        jmp   proc_lookup_ω
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_lookup_ω
                                                                                        jmp   proc_lookup_ω
n1_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n5_var_ref_α
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n6_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n0_disjunction_as
n3_assign_β:
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n7_var_α
n4_var_ref_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n8_var_α
n5_var_ref_β:
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n10_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n11_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n12_assign_var_α
.Lx42_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n13_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_lookup_ω
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_deref_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n16_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn50:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rbp + 464]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_α
                                                                                        jmp   n3_assign_α
n15_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_unop_test_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n19_lit_integer_α
.Lx52_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n21_lit_integer_α
.Lx54_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n22_return_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n23_call_α
.Lx57_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n22_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_lookup_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn60:               .string          "method"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 256]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    proc_lookup_ω
                                                                                        jmp   n24_assign_var_α
n23_call_β:
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_lookup_ω
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n25_return_α
#-----------------------------------------------------------------------------------------------------------------------
n25_return_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_lookup_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_β:
                                                                                        jmp   proc_lookup_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 568]
                        lea              rsp, [rbp + 592]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_ω:
                        mov              rax, [rbp + 576]
                        lea              rsp, [rbp + 592]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lookup_dcα:
                        pop              r11
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 560], r11
                        lea              rax, [rip + .Lx63_2]
                        mov              qword ptr [rbp + 568], rax
                        lea              rax, [rip + .Lx63_3]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 544
                        mov              edx, 560
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_lookup_α_body
.Lx63_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -592
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx63_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -592
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_accumulate_α
proc_accumulate_α:
                        .global          proc_accumulate_α
                        .global          proc_accumulate_β
                        .global          proc_accumulate_γ
                        .global          proc_accumulate_ω
                        sub              rsp, 2064
                        mov              [rsp + 2040], rcx
                        mov              [rsp + 2048], rdx
                        mov              [rsp + 2056], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1936
                        mov              edx, 2032
                        call             rt_jmp_frame_lexprep2@PLT
proc_accumulate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_charset_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              dword ptr [rbp + 1924], -1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n65_call_builtin_icon_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn28:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn28]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n67_lit_charset_α
                                                                                        jmp   n66_call_α
n65_call_builtin_icon_β:
                                                                                        jmp   n67_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        mov              qword ptr [rbp + 1840], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn29:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn29]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n67_lit_charset_α
                                                                                        jmp   n68_call_builtin_icon_α
n66_call_β:
                        mov              r14, qword ptr [rbp + 1840]
                                                                                        jmp   n67_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_charset_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              dword ptr [rbp + 1748], -1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n69_call_builtin_icon_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn140:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n67_lit_charset_α
                                                                                        jmp   n70_assign_α
n68_call_builtin_icon_β:
                                                                                        jmp   n67_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn32:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn32]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n72_lit_charset_α
                                                                                        jmp   n71_call_α
n69_call_builtin_icon_β:
                                                                                        jmp   n72_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n67_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              qword ptr [rbp + 1664], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn34:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn34]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n72_lit_charset_α
                                                                                        jmp   n72_lit_charset_α
n71_call_β:
                        mov              r14, qword ptr [rbp + 1664]
                                                                                        jmp   n72_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_charset_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              dword ptr [rbp + 1620], -1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n73_call_builtin_gen_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        mov              qword ptr [rbp + 1600], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx145_60:
                        .section         .rodata
.Lbynamegenfn36:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn36]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        lea              rcx, [rbp + 1600]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_charset_α
                                                                                        jmp   n74_call_α
n73_call_builtin_gen_β:
                                                                                        jmp   .Lx145_60
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        mov              qword ptr [rbp + 1536], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn37:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn37]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n73_call_builtin_gen_β
                                                                                        jmp   n76_assign_α
n74_call_β:
                        mov              r14, qword ptr [rbp + 1536]
                                                                                        jmp   n73_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_charset_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              dword ptr [rbp + 1492], -1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n77_call_builtin_icon_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n75_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn40:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn40]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n79_lit_charset_α
                                                                                        jmp   n78_call_α
n77_call_builtin_icon_β:
                                                                                        jmp   n79_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              qword ptr [rbp + 1408], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn41:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n79_lit_charset_α
                                                                                        jmp   n79_lit_charset_α
n78_call_β:
                        mov              r14, qword ptr [rbp + 1408]
                                                                                        jmp   n79_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_charset_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n80_call_builtin_gen_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              qword ptr [rbp + 1344], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx152_60:
                        .section         .rodata
.Lbynamegenfn43:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn43]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        lea              rcx, [rbp + 1344]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n82_disjunction_α
                                                                                        jmp   n81_call_α
n80_call_builtin_gen_β:
                                                                                        jmp   .Lx152_60
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              qword ptr [rbp + 1280], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn44:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn44]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n80_call_builtin_gen_β
                                                                                        jmp   n83_assign_α
n81_call_β:
                        mov              r14, qword ptr [rbp + 1280]
                                                                                        jmp   n80_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n85_var_α
n82_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx155_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n84_lit_charset_α
.Lx155_0:
                                                                                        jmp   n84_lit_charset_α
n82_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   n86_call_builtin_gen_β
n82_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   n84_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n82_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_charset_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              dword ptr [rbp + 868], -1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n88_call_builtin_icon_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n89_lit_string_α
n85_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        mov              qword ptr [rbp + 1056], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx160_60:
                        .section         .rodata
.Lbynamegenfn49:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn49]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        lea              rcx, [rbp + 1056]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n84_lit_charset_α
                                                                                        jmp   n90_call_α
n86_call_builtin_gen_β:
                                                                                        jmp   .Lx160_60
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n82_disjunction_as
n87_assign_β:
                                                                                        jmp   n84_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn51:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn51]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n92_lit_charset_α
                                                                                        jmp   n91_call_α
n88_call_builtin_icon_β:
                                                                                        jmp   n92_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n93_call_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          " caller"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              qword ptr [rbp + 992], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn53:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn53]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n86_call_builtin_gen_β
                                                                                        jmp   n94_binop_α
n90_call_β:
                        mov              r14, qword ptr [rbp + 992]
                                                                                        jmp   n86_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              qword ptr [rbp + 784], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn54:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn54]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n92_lit_charset_α
                                                                                        jmp   n92_lit_charset_α
n91_call_β:
                        mov              r14, qword ptr [rbp + 784]
                                                                                        jmp   n92_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_charset_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n95_call_builtin_icon_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn56:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn56]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n82_disjunction_af
                                                                                        jmp   n96_call_α
n93_call_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn58:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn58]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n98_var_α
                                                                                        jmp   n97_call_α
n95_call_builtin_icon_β:
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              qword ptr [rbp + 1152], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn59:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn59]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n82_disjunction_af
                                                                                        jmp   n99_binop_α
n96_call_β:
                        mov              r14, qword ptr [rbp + 1152]
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              qword ptr [rbp + 656], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn60:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn60]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n98_var_α
                                                                                        jmp   n100_call_builtin_icon_α
n97_call_β:
                        mov              r14, qword ptr [rbp + 656]
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n101_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n103_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn176:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n98_var_α
                                                                                        jmp   n104_assign_α
n100_call_builtin_icon_β:
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        call             proc_fixname_dcα
                                                                                        jmp   .Lx178_2
.Lx178_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n102_var_α
                                                                                        jmp   n105_assign_α
n101_call_proc_staged_β:
                                                                                        jmp   n102_var_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "fixname"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n106_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        lea              rsi, [rbp + 496]
                        call             proc_fixname_dcα
                                                                                        jmp   .Lx185_2
.Lx185_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n107_var_α
                                                                                        jmp   n109_assign_α
n106_call_proc_staged_β:
                                                                                        jmp   n107_var_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "fixname"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n112_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        lea              rsi, [rbp + 432]
                        call             proc_lookup_dcα
                                                                                        jmp   .Lx192_2
.Lx192_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n111_var_α
                                                                                        jmp   n113_assign_α
n110_call_proc_staged_β:
                                                                                        jmp   n111_var_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "lookup"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n114_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n86_call_builtin_gen_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx197_0]
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n115_var_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n116_deref_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n117_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_deref_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n115_var_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n117_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n118_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n120_deref_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "ncalls"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n121_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n123_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n120_deref_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n118_var_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        call             proc_lookup_dcα
                                                                                        jmp   .Lx208_2
.Lx208_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n122_var_α
                                                                                        jmp   n125_assign_α
n121_call_proc_staged_β:
                                                                                        jmp   n122_var_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "lookup"
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n126_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx211_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 6
                                                                                        jne   .Lx211_0
                        mov              rax, qword ptr [rbp + 360]
                        mov              rcx, qword ptr [rbp + 1960]
                        add              rax, rcx
                        mov              qword ptr [rbp + 336], 6
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n128_assign_var_α
.Lx211_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n115_var_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n128_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n129_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx215_0]
                        mov              rsi, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n127_return_α
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n130_deref_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "tcalled"
#-----------------------------------------------------------------------------------------------------------------------
n127_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_accumulate_γ
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n115_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx218_0
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 6
                                                                                        jne   .Lx218_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, qword ptr [rbp + 2008]
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n131_assign_var_α
.Lx218_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n118_var_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n131_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n127_return_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_var_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n118_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n133_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 6
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 6
                                                                                        jne   .Lx223_0
                        mov              rax, qword ptr [rbp + 88]
                        mov              rcx, qword ptr [rbp + 1960]
                        add              rax, rcx
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n134_assign_var_α
.Lx223_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n127_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n134_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_var_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n127_return_α
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n127_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_β:
                                                                                        jmp   proc_accumulate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2040]
                        lea              rsp, [rbp + 2064]
                        mov              rbp, [rbp + 2056]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_ω:
                        mov              rax, [rbp + 2048]
                        lea              rsp, [rbp + 2064]
                        mov              rbp, [rbp + 2056]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_accumulate_dcα:
                        pop              r11
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 2056], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2032], r11
                        lea              rax, [rip + .Lx225_2]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rax, [rip + .Lx225_3]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rdi, rbp
                        mov              esi, 1936
                        mov              edx, 2032
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_accumulate_α_body
.Lx225_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2064
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx225_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2064
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fixname_α
proc_fixname_α:
                        .global          proc_fixname_α
                        .global          proc_fixname_β
                        .global          proc_fixname_γ
                        .global          proc_fixname_ω
                        sub              rsp, 704
                        mov              [rsp + 680], rcx
                        mov              [rsp + 688], rdx
                        mov              [rsp + 696], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 672
                        call             rt_jmp_frame_lexprep2@PLT
proc_fixname_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n227_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n227_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n228_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n228_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n230_lit_string_α
n228_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx257_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n229_lit_integer_α
.Lx257_0:
                        cmp              eax, 1
                                                                                        jne   .Lx257_1
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n229_lit_integer_α
.Lx257_1:
                        cmp              eax, 2
                                                                                        jne   .Lx257_2
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n229_lit_integer_α
.Lx257_2:
                                                                                        jmp   n229_lit_integer_α
n228_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n228_disjunction_af
                        cmp              eax, 1
                                                                                        je    n232_scan_upto_β
                                                                                        jmp   n234_scan_upto_β
n228_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n231_lit_string_α
                        cmp              eax, 2
                                                                                        je    n233_lit_string_α
                                                                                        jmp   n229_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n238_scan_tab_α
.Lx258_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n239_scan_match_α
n230_lit_string_β:
                                                                                        jmp   n228_disjunction_af
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "jcon/"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n240_scan_match_α
n231_lit_string_β:
                                                                                        jmp   n228_disjunction_af
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "java/"
#-----------------------------------------------------------------------------------------------------------------------
n232_scan_upto_α:
                        mov              qword ptr [rbp + 352], r14
.Lx262_0:
                        mov              rax, qword ptr [rbp + 352]
                        cmp              rax, r15
                                                                                        jge   n245_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx262_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx262_1
                        mov              qword ptr [rbp + 336], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n241_lit_integer_α
.Lx262_1:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx262_0
n232_scan_upto_β:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx262_0
.Lx262_2:
                        .quad            .Lx262_2_s
.Lx262_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n242_scan_match_α
n233_lit_string_β:
                                                                                        jmp   n228_disjunction_af
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "p_l$"
#-----------------------------------------------------------------------------------------------------------------------
n234_scan_upto_α:
                        mov              qword ptr [rbp + 544], r14
.Lx265_0:
                        mov              rax, qword ptr [rbp + 544]
                        cmp              rax, r15
                                                                                        jge   n247_scan_tab_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx265_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx265_1
                        mov              qword ptr [rbp + 528], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n243_scan_tab_α
.Lx265_1:
                        inc              qword ptr [rbp + 544]
                                                                                        jmp   .Lx265_0
n234_scan_upto_β:
                        inc              qword ptr [rbp + 544]
                                                                                        jmp   .Lx265_0
.Lx265_2:
                        .quad            .Lx265_2_s
.Lx265_2_s:
                        .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n235_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 216]
                        cmp              rax, 1
                                                                                        jge   .Lx267_0
                        add              rax, r15
                        add              rax, 1
.Lx267_0:
                        cmp              rax, 1
                                                                                        jge   .Lx267_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx267_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx267_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx267_240:
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n228_disjunction_as
n235_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n236_conjunction_α:
                                                                                        jmp   n228_disjunction_as
n236_conjunction_β:
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n237_conjunction_α:
                                                                                        jmp   n228_disjunction_as
n237_conjunction_β:
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n238_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx271_0
                        add              rax, r15
                        add              rax, 1
.Lx271_0:
                        cmp              rax, 1
                                                                                        jge   .Lx271_239
                        add              rsp, 16
                                                                                        jmp   proc_fixname_ω
.Lx271_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx271_240
                        add              rsp, 16
                                                                                        jmp   proc_fixname_ω
.Lx271_240:
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n244_return_α
n238_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_fixname_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5
                                                                                        jge   .Lx273_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx273_239:
                        mov              rdi, qword ptr [rip + .Lx273_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx273_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx273_240:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n235_scan_tab_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "jcon/"
#-----------------------------------------------------------------------------------------------------------------------
n240_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5
                                                                                        jge   .Lx275_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx275_239:
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx275_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx275_240:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n245_scan_tab_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "java/"
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n246_op75_α
.Lx276_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n242_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 4
                                                                                        jge   .Lx278_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx278_239:
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 4
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx278_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx278_240:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, r14
                        add              rax, 5
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n247_scan_tab_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "p_l$"
#-----------------------------------------------------------------------------------------------------------------------
n243_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 536]
                        cmp              rax, 1
                                                                                        jge   .Lx280_0
                        add              rax, r15
                        add              rax, 1
.Lx280_0:
                        cmp              rax, 1
                                                                                        jge   .Lx280_239
                        add              rsp, 16
                                                                                        jmp   n234_scan_upto_β
.Lx280_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx280_240
                        add              rsp, 16
                                                                                        jmp   n234_scan_upto_β
.Lx280_240:
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n237_conjunction_α
n243_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n234_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n244_return_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_fixname_γ
#-----------------------------------------------------------------------------------------------------------------------
n245_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 440]
                        cmp              rax, 1
                                                                                        jge   .Lx283_0
                        add              rax, r15
                        add              rax, 1
.Lx283_0:
                        cmp              rax, 1
                                                                                        jge   .Lx283_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx283_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx283_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx283_240:
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n248_lit_charset_α
n245_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n246_op75_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx285_1
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
.Lx285_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n249_binop_α
.Lx285_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 384]
                        lea              rdx, [rbp + 320]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n249_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n247_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 616]
                        cmp              rax, 1
                                                                                        jge   .Lx287_0
                        add              rax, r15
                        add              rax, 1
.Lx287_0:
                        cmp              rax, 1
                                                                                        jge   .Lx287_239
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx287_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx287_240
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
.Lx287_240:
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
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n250_lit_charset_α
n247_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n228_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_charset_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              dword ptr [rbp + 372], -1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n232_scan_upto_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx289_0
                        mov              rax, qword ptr [rbp + 328]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n251_scan_tab_α
.Lx289_0:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n245_scan_tab_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n251_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_charset_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              dword ptr [rbp + 564], -1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n234_scan_upto_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n251_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 312]
                        cmp              rax, 1
                                                                                        jge   .Lx292_0
                        add              rax, r15
                        add              rax, 1
.Lx292_0:
                        cmp              rax, 1
                                                                                        jge   .Lx292_239
                        add              rsp, 16
                                                                                        jmp   n232_scan_upto_β
.Lx292_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx292_240
                        add              rsp, 16
                                                                                        jmp   n232_scan_upto_β
.Lx292_240:
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n236_conjunction_α
n251_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n232_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_β:
                                                                                        jmp   proc_fixname_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 680]
                        lea              rsp, [rbp + 704]
                        mov              rbp, [rbp + 696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_ω:
                        mov              rax, [rbp + 688]
                        lea              rsp, [rbp + 704]
                        mov              rbp, [rbp + 696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fixname_dcα:
                        pop              r11
                        sub              rsp, 720
                        mov              qword ptr [rsp + 696], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 672], r11
                        lea              rax, [rip + .Lx293_2]
                        mov              qword ptr [rbp + 680], rax
                        lea              rax, [rip + .Lx293_3]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 672
                        mov              edx, 672
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_fixname_α_body
.Lx293_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -704
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx293_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -704
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pad_α
proc_pad_α:
                        .global          proc_pad_α
                        .global          proc_pad_β
                        .global          proc_pad_γ
                        .global          proc_pad_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_pad_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n294_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n295_var_α
n294_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx306_0
                                                                                        jmp   proc_pad_ω
.Lx306_0:
                        cmp              eax, 1
                                                                                        jne   .Lx306_1
                                                                                        jmp   proc_pad_ω
.Lx306_1:
                                                                                        jmp   proc_pad_ω
n294_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_pad_ω
                                                                                        jmp   proc_pad_ω
n294_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n296_var_α
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n297_unop_α
n295_var_β:
                                                                                        jmp   n294_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n298_return_α
n296_var_β:
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n298_return_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_pad_γ
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n300_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 100
                                                                                        je    .Lx315_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx315_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx315_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx315_2
.Lx315_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n294_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n301_var_α
.Lx315_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        lea              r9, [rbp + 176]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx315_1
                        cmp              eax, 1
                                                                                        je    n294_disjunction_af
                                                                                        jmp   n301_var_α
.Lx315_2:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n294_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n302_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n303_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn321:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pad_ω
                                                                                        jmp   n304_return_α
n303_call_builtin_icon_β:
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_pad_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_β:
                                                                                        jmp   proc_pad_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pad_dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx323_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx323_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pad_α_body
.Lx323_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx323_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "method(name,ncalls,tself,tcalled,tlocal)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "lookup"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_lookup_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_lookup_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "accumulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_accumulate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2032
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_accumulate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fixname"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fixname_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 672
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fixname_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pad"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pad_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pad_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ptab"
.Lgvan1:                .string          "lookup__INITFLAG__0"
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
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
                        sub              rsp, 4168
                        mov              rdi, rsp
                        mov              ecx, 4168
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4160], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n324_disjunction_α:
                        mov              qword ptr [rbp + 3824], 0
                        mov              qword ptr [rbp + 3832], 0
                        mov              dword ptr [rbp + 3840], 0
                                                                                        jmp   n326_var_ref_α
n324_disjunction_as:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 0
                                                                                        jne   .Lx512_0
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n325_disjunction_α
.Lx512_0:
                                                                                        jmp   n325_disjunction_α
n324_disjunction_β:
                        mov              eax, dword ptr [rbp + 3840]
                                                                                        jmp   n325_disjunction_α
n324_disjunction_af:
                        add              dword ptr [rbp + 3840], 1
                        mov              eax, dword ptr [rbp + 3840]
                                                                                        jmp   n325_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n325_disjunction_α:
                        mov              qword ptr [rbp + 3328], 0
                        mov              qword ptr [rbp + 3336], 0
                        mov              dword ptr [rbp + 3344], 0
                                                                                        jmp   n329_var_α
n325_disjunction_as:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        jne   .Lx514_0
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n328_var_α
.Lx514_0:
                        cmp              eax, 1
                                                                                        jne   .Lx514_1
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n328_var_α
.Lx514_1:
                                                                                        jmp   n328_var_α
n325_disjunction_β:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        je    n330_disjunction_β
                                                                                        jmp   n328_var_α
n325_disjunction_af:
                        add              dword ptr [rbp + 3344], 1
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 1
                                                                                        je    n331_keyword_icon_α
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n334_lit_integer_α
n326_var_ref_β:
                                                                                        jmp   n324_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              rdx, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n324_disjunction_as
n327_assign_β:
                                                                                        jmp   n325_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n335_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n337_unop_α
n329_var_β:
                                                                                        jmp   n325_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n330_disjunction_α:
                        mov              qword ptr [rbp + 3376], 0
                        mov              qword ptr [rbp + 3384], 0
                        mov              dword ptr [rbp + 3392], 0
                                                                                        jmp   n338_var_ref_α
n330_disjunction_as:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        jne   .Lx523_0
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n332_assign_α
.Lx523_0:
                        cmp              eax, 1
                                                                                        jne   .Lx523_1
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n332_assign_α
.Lx523_1:
                                                                                        jmp   n332_assign_α
n330_disjunction_β:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        je    n330_disjunction_af
                                                                                        jmp   n330_disjunction_af
n330_disjunction_af:
                        add              dword ptr [rbp + 3392], 1
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 1
                                                                                        je    n339_keyword_icon_α
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx524_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n328_var_α
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n333_assign_α
n331_keyword_icon_β:
                                                                                        jmp   n328_var_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n332_assign_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n325_disjunction_as
n332_assign_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              rdx, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n325_disjunction_as
n333_assign_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n342_subscript_α
.Lx527_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn529:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]
                        lea              rsi, [rbp + 2944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n336_make_list_α
                                                                                        jmp   n343_assign_α
n335_call_builtin_icon_β:
                                                                                        jmp   n336_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n336_make_list_α:
                        lea              rdi, [rbp + 2928]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n344_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n337_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n345_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n346_lit_integer_α
n338_var_ref_β:
                                                                                        jmp   n330_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n339_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx535_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n347_lit_string_α
n339_keyword_icon_β:
                                                                                        jmp   n330_disjunction_af
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "&progname"
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3432], rax
                        .section         .rodata
.Lrkfn537:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn537]
                        lea              rsi, [rbp + 3424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                                                                                        jmp   n330_disjunction_as
n340_call_builtin_icon_β:
                                                                                        jmp   n330_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3576], rax
                        .section         .rodata
.Lrkfn539:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rbp + 3536]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                                                                                        jmp   n330_disjunction_as
n341_call_builtin_icon_β:
                                                                                        jmp   n330_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n342_subscript_α:
                        mov              rdi, qword ptr [rbp + 3952]
                        mov              rsi, qword ptr [rbp + 3960]
                        mov              rdx, qword ptr [rbp + 3968]
                        mov              rcx, qword ptr [rbp + 3976]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n324_disjunction_af
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n348_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n349_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 6
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n351_binop_test_α
.Lx543_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n352_subscript_α
.Lx544_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n353_var_ref_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          ": can't open "
#-----------------------------------------------------------------------------------------------------------------------
n348_deref_α:
                        mov              rdi, qword ptr [rbp + 3984]
                        mov              rsi, qword ptr [rbp + 3992]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n324_disjunction_af
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                                                                                        jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n355_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n356_assign_α
.Lx549_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n351_binop_test_α:
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 100
                                                                                        je    .Lx550_0
                        mov              eax, dword ptr [rbp + 3760]
                        cmp              eax, 100
                                                                                        je    .Lx550_0
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 6
                                                                                        jne   .Lx550_2
                        mov              eax, dword ptr [rbp + 3760]
                        cmp              eax, 6
                                                                                        jne   .Lx550_2
.Lx550_1:
                        mov              rax, qword ptr [rbp + 3736]
                        mov              rcx, qword ptr [rbp + 3768]
                        cmp              rax, rcx
                                                                                        jle   n325_disjunction_af
                        mov              rcx, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rcx
                        mov              rcx, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rcx
                                                                                        jmp   n330_disjunction_α
.Lx550_0:
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        mov              rdx, qword ptr [rbp + 3760]
                        mov              rcx, qword ptr [rbp + 3768]
                        mov              r8d, 7
                        lea              r9, [rbp + 3712]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx550_1
                        cmp              eax, 1
                                                                                        je    n325_disjunction_af
                                                                                        jmp   n330_disjunction_α
.Lx550_2:
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        mov              rdx, qword ptr [rbp + 3760]
                        mov              rcx, qword ptr [rbp + 3768]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n325_disjunction_af
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n330_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n352_subscript_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3480]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n357_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 4016], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n359_binop_test_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "-t"
#-----------------------------------------------------------------------------------------------------------------------
n355_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n360_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n361_var_α
#-----------------------------------------------------------------------------------------------------------------------
n357_deref_α:
                        mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n340_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n362_subscript_α
.Lx559_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n359_binop_test_α:
                        mov              rdi, qword ptr [rbp + 4000]
                        mov              rsi, qword ptr [rbp + 4008]
                        mov              rdx, qword ptr [rbp + 4016]
                        mov              rcx, qword ptr [rbp + 4024]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n324_disjunction_af
                        mov              rdi, qword ptr [rbp + 4016]
                        mov              rsi, qword ptr [rbp + 4024]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n363_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_disjunction_α:
                        mov              qword ptr [rbp + 3200], 0
                        mov              qword ptr [rbp + 3208], 0
                        mov              dword ptr [rbp + 3216], 0
                                                                                        jmp   n365_lit_string_α
n360_disjunction_as:
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 0
                                                                                        jne   .Lx562_0
                                                                                        jmp   n364_disjunction_α
.Lx562_0:
                                                                                        jmp   n364_disjunction_α
n360_disjunction_β:
                        mov              eax, dword ptr [rbp + 3216]
                                                                                        jmp   n364_disjunction_α
n360_disjunction_af:
                        add              dword ptr [rbp + 3216], 1
                        mov              eax, dword ptr [rbp + 3216]
                                                                                        jmp   n364_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n366_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n362_subscript_α:
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        mov              rdx, qword ptr [rbp + 3664]
                        mov              rcx, qword ptr [rbp + 3672]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n368_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n369_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n364_disjunction_α:
                        mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0
                        mov              dword ptr [rbp + 3136], 0
                                                                                        jmp   n371_lit_charset_α
n364_disjunction_as:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        jne   .Lx568_0
                                                                                        jmp   n370_call_proc_staged_α
.Lx568_0:
                                                                                        jmp   n370_call_proc_staged_α
n364_disjunction_β:
                        mov              eax, dword ptr [rbp + 3136]
                                                                                        jmp   n370_call_proc_staged_α
n364_disjunction_af:
                        add              dword ptr [rbp + 3136], 1
                        mov              eax, dword ptr [rbp + 3136]
                                                                                        jmp   n370_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n372_scan_match_α
n365_lit_string_β:
                                                                                        jmp   n360_disjunction_af
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n366_iterate_α:
                        mov              qword ptr [rbp + 2336], 0
.Lx571_0:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2336]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              rax, 99
                                                                                        je    n367_disjunction_α
                                                                                        jmp   n373_assign_α
n366_iterate_β:
                        inc              qword ptr [rbp + 2336]
                                                                                        jmp   .Lx571_0
#-----------------------------------------------------------------------------------------------------------------------
n367_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n375_var_α
n367_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx573_0
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n374_lit_string_α
.Lx573_0:
                        cmp              eax, 1
                                                                                        jne   .Lx573_1
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n374_lit_string_α
.Lx573_1:
                                                                                        jmp   n374_lit_string_α
n367_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        je    n374_lit_string_α
                                                                                        jmp   n374_lit_string_α
n367_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 1
                                                                                        je    n376_var_α
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_deref_α:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n330_disjunction_af
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   n341_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        .section         .rodata
.Lrkfn576:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rbp + 3888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n325_disjunction_α
                                                                                        jmp   n327_assign_α
n369_call_builtin_icon_β:
                                                                                        jmp   n325_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_accumulate_dcα
                                                                                        jmp   .Lx578_2
.Lx578_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    n380_scan_α
                                                                                        jmp   n379_conjunction_α
n370_call_proc_staged_β:
                                                                                        jmp   n380_scan_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "accumulate"
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_charset_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              dword ptr [rbp + 3188], -1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n381_scan_any_α
n371_lit_charset_β:
                                                                                        jmp   n388_var_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n372_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 5
                                                                                        jge   .Lx581_239
                        add              rsp, 16
                                                                                        jmp   n360_disjunction_af
.Lx581_239:
                        mov              rdi, qword ptr [rip + .Lx581_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 5
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx581_240
                        add              rsp, 16
                                                                                        jmp   n360_disjunction_af
.Lx581_240:
                        mov              qword ptr [rbp + 3264], 6
                        mov              rax, r14
                        add              rax, 6
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n382_scan_tab_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n383_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n384_call_builtin_icon_α
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "  calls  totaltime   inmethod  method"
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n385_unop_test_α
n375_var_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n386_lit_integer_α
n376_var_β:
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n367_disjunction_as
n377_assign_β:
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n367_disjunction_as
n378_assign_β:
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n379_conjunction_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n387_scan_α
n379_conjunction_β:
                                                                                        jmp   n380_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n380_scan_α:
                        lea              rdi, [rbp + 3008]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n328_var_α
n380_scan_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n381_scan_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n388_var_α
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx594_0]
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                                                                                        je    n388_var_α
                        mov              qword ptr [rbp + 3168], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n364_disjunction_af
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n382_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 3272]
                        cmp              rax, 1
                                                                                        jge   .Lx596_0
                        add              rax, r15
                        add              rax, 1
.Lx596_0:
                        cmp              rax, 1
                                                                                        jge   .Lx596_239
                        add              rsp, 16
                                                                                        jmp   n360_disjunction_af
.Lx596_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx596_240
                        add              rsp, 16
                                                                                        jmp   n360_disjunction_af
.Lx596_240:
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
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n328_var_α
n382_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_bound_α:
                        mov              qword ptr [rbp + 2368], rsp
                                                                                        jmp   n389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn600:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n390_var_α
                                                                                        jmp   n390_var_α
n384_call_builtin_icon_β:
                                                                                        jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_unop_test_α:
                        mov              eax, dword ptr [rbp + 4112]
                        cmp              eax, 99
                                                                                        je    n367_disjunction_af
                        cmp              eax, 0
                                                                                        je    n367_disjunction_af
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n392_call_builtin_icon_α
.Lx602_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n387_scan_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3008]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n328_var_α
n387_scan_β:
                                                                                        jmp   n328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3160], 0
                                                                                        jmp   n336_make_list_α
n388_var_β:
                                                                                        jmp   n364_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n393_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n395_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n396_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn613:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
                                                                                        jmp   n378_assign_α
n392_call_builtin_icon_β:
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n393_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx614_0]
                        mov              rsi, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n394_disjunction_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n397_var_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n394_disjunction_α:
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              dword ptr [rbp + 2544], 0
                                                                                        jmp   n399_var_α
n394_disjunction_as:
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 0
                                                                                        jne   .Lx616_0
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n398_var_α
.Lx616_0:
                                                                                        jmp   n398_var_α
n394_disjunction_β:
                        mov              eax, dword ptr [rbp + 2544]
                                                                                        jmp   n398_var_α
n394_disjunction_af:
                        add              dword ptr [rbp + 2544], 1
                        mov              eax, dword ptr [rbp + 2544]
                                                                                        jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n395_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn618:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn618]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n401_assign_α
n395_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:
                        mov              qword ptr [rbp + 2160], 6
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n402_call_builtin_icon_α
.Lx619_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n403_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n404_var_α
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n406_field_get_α
n399_var_β:
                                                                                        jmp   n394_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n394_disjunction_as
n400_assign_β:
                                                                                        jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n407_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n402_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn629:              .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn629]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
                                                                                        jmp   n377_assign_α
n402_call_builtin_icon_β:
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n403_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx630_0]
                        mov              rsi, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n394_disjunction_α
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n408_var_α
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n409_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n405_unmark_α:
                        mov              rsp, qword ptr [rbp + 2368]
                                                                                        jmp   n366_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n406_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx635_0]
                        mov              rsi, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n394_disjunction_af
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n410_lit_integer_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n407_disjunction_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                        mov              dword ptr [rbp + 1344], 0
                                                                                        jmp   n412_var_α
n407_disjunction_as:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        jne   .Lx637_0
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n411_lit_integer_α
.Lx637_0:
                        cmp              eax, 1
                                                                                        jne   .Lx637_1
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n411_lit_integer_α
.Lx637_1:
                                                                                        jmp   n411_lit_integer_α
n407_disjunction_β:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        je    n411_lit_integer_α
                                                                                        jmp   n411_lit_integer_α
n407_disjunction_af:
                        add              dword ptr [rbp + 1344], 1
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 1
                                                                                        je    n413_lit_integer_α
                                                                                        jmp   n411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n416_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn641:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n405_unmark_α
                                                                                        jmp   n417_conjunction_α
n409_call_builtin_icon_β:
                                                                                        jmp   n405_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 6
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n418_binop_test_α
.Lx642_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:
                        mov              qword ptr [rbp + 1200], 6
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n419_var_α
.Lx643_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n420_field_get_α
n412_var_β:
                                                                                        jmp   n407_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n421_var_α
n413_lit_integer_β:
                                                                                        jmp   n411_lit_integer_α
.Lx646_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n414_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n407_disjunction_as
n414_assign_β:
                                                                                        jmp   n411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n407_disjunction_as
n415_assign_β:
                                                                                        jmp   n411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n416_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx649_0]
                        mov              rsi, qword ptr [rbp + 2880]
                        mov              rdx, qword ptr [rbp + 2888]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n394_disjunction_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n422_op75_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "tcalled"
#-----------------------------------------------------------------------------------------------------------------------
n417_conjunction_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n405_unmark_α
n417_conjunction_β:
                                                                                        jmp   n405_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n418_binop_test_α:
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 100
                                                                                        je    .Lx651_0
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 100
                                                                                        je    .Lx651_0
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 6
                                                                                        jne   .Lx651_2
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 6
                                                                                        jne   .Lx651_2
.Lx651_1:
                        mov              rax, qword ptr [rbp + 2696]
                        mov              rcx, qword ptr [rbp + 2728]
                        cmp              rax, rcx
                                                                                        jle   n394_disjunction_af
                        mov              rcx, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rcx
                        mov              rcx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rcx
                                                                                        jmp   n423_var_α
.Lx651_0:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2720]
                        mov              rcx, qword ptr [rbp + 2728]
                        mov              r8d, 7
                        lea              r9, [rbp + 2672]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx651_1
                        cmp              eax, 1
                                                                                        je    n394_disjunction_af
                                                                                        jmp   n423_var_α
.Lx651_2:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2720]
                        mov              rcx, qword ptr [rbp + 2728]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n394_disjunction_af
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n424_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n420_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx654_0]
                        mov              rsi, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n407_disjunction_af
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n426_lit_integer_α
.Lx654_0:
                        .quad            .Lx654_0_s
.Lx654_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n427_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n422_op75_α:
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 7
                                                                                        je    .Lx658_1
                        cmp              eax, 6
                                                                                        jne   .Lx658_0
                        mov              eax, dword ptr [rbp + 2864]
                        cmp              eax, 6
                                                                                        jne   .Lx658_0
.Lx658_1:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n428_op75_α
.Lx658_0:
                        lea              rdi, [rbp + 2832]
                        lea              rsi, [rbp + 2864]
                        lea              rdx, [rbp + 2816]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n428_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx661_0]
                        mov              rsi, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n425_var_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n430_op75_α
.Lx661_0:
                        .quad            .Lx661_0_s
.Lx661_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n431_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n432_binop_test_α
.Lx664_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n427_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx665_0]
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n433_op75_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n428_op75_α:
                        mov              eax, dword ptr [rbp + 2864]
                        cmp              eax, 7
                                                                                        je    .Lx667_1
                        cmp              eax, 6
                                                                                        jne   .Lx667_0
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 6
                                                                                        jne   .Lx667_0
.Lx667_1:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n434_binop_α
.Lx667_0:
                        lea              rdi, [rbp + 2864]
                        lea              rsi, [rbp + 2832]
                        lea              rdx, [rbp + 2800]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n434_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n435_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n430_op75_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 7
                                                                                        je    .Lx671_1
                        cmp              eax, 6
                                                                                        jne   .Lx671_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx671_0
.Lx671_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n436_binop_α
.Lx671_0:
                        lea              rdi, [rbp + 1216]
                        lea              rsi, [rbp + 1200]
                        lea              rdx, [rbp + 1184]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n436_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n431_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx672_0]
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n390_var_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n437_lit_integer_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "ncalls"
#-----------------------------------------------------------------------------------------------------------------------
n432_binop_test_α:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 100
                                                                                        je    .Lx673_0
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 100
                                                                                        je    .Lx673_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 6
                                                                                        jne   .Lx673_2
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 6
                                                                                        jne   .Lx673_2
.Lx673_1:
                        mov              rax, qword ptr [rbp + 1656]
                        mov              rcx, qword ptr [rbp + 1688]
                        cmp              rax, rcx
                                                                                        jle   n407_disjunction_af
                        mov              rcx, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rcx
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rcx
                                                                                        jmp   n438_lit_integer_α
.Lx673_0:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 7
                        lea              r9, [rbp + 1632]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx673_1
                        cmp              eax, 1
                                                                                        je    n407_disjunction_af
                                                                                        jmp   n438_lit_integer_α
.Lx673_2:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n407_disjunction_af
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n438_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n433_op75_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 7
                                                                                        je    .Lx675_1
                        cmp              eax, 6
                                                                                        jne   .Lx675_0
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 6
                                                                                        jne   .Lx675_0
.Lx675_1:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n439_binop_α
.Lx675_0:
                        lea              rdi, [rbp + 1856]
                        lea              rsi, [rbp + 1840]
                        lea              rdx, [rbp + 1824]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n439_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n434_binop_α:
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 6
                                                                                        jne   .Lx676_0
                        mov              eax, dword ptr [rbp + 2800]
                        cmp              eax, 6
                                                                                        jne   .Lx676_0
                        mov              rax, qword ptr [rbp + 2824]
                        mov              rcx, qword ptr [rbp + 2808]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 2784], 6
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n440_assign_var_α
.Lx676_0:
                        mov              rdi, qword ptr [rbp + 2816]
                        mov              rsi, qword ptr [rbp + 2824]
                        mov              rdx, qword ptr [rbp + 2800]
                        mov              rcx, qword ptr [rbp + 2808]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n394_disjunction_α
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n440_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n435_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx677_0]
                        mov              rsi, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n398_var_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n441_op75_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n436_binop_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx678_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 1192]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1168], 6
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n442_var_α
.Lx678_0:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n425_var_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n442_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n443_call_proc_staged_α
.Lx679_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n444_var_α
.Lx680_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n439_binop_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 6
                                                                                        jne   .Lx681_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 1832]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1808], 6
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n445_var_α
.Lx681_0:
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n445_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2736]
                        mov              rsi, qword ptr [rbp + 2744]
                        mov              rdx, qword ptr [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2792]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n394_disjunction_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n394_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n441_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx684_1
                        cmp              eax, 6
                                                                                        jne   .Lx684_0
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 6
                                                                                        jne   .Lx684_0
.Lx684_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n446_op75_α
.Lx684_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 2640]
                        lea              rdx, [rbp + 2608]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n446_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n447_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 432]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx688_2
.Lx688_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n390_var_α
                                                                                        jmp   n448_var_α
n443_call_proc_staged_β:
                                                                                        jmp   n390_var_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n449_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n450_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n446_op75_α:
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 7
                                                                                        je    .Lx694_1
                        cmp              eax, 6
                                                                                        jne   .Lx694_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 6
                                                                                        jne   .Lx694_0
.Lx694_1:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n451_binop_α
.Lx694_0:
                        lea              rdi, [rbp + 2640]
                        lea              rsi, [rbp + 4096]
                        lea              rdx, [rbp + 2592]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n451_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n452_op75_α
.Lx695_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n453_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n449_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx698_0]
                        mov              rsi, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n454_op75_α
.Lx698_0:
                        .quad            .Lx698_0_s
.Lx698_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n455_op75_α
.Lx699_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 6
                                                                                        jne   .Lx700_0
                        mov              eax, dword ptr [rbp + 2592]
                        cmp              eax, 6
                                                                                        jne   .Lx700_0
                        mov              rax, qword ptr [rbp + 2616]
                        mov              rcx, qword ptr [rbp + 2600]
                        add              rax, rcx
                        mov              qword ptr [rbp + 2576], 6
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n400_assign_α
.Lx700_0:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        mov              rdx, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2600]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n398_var_α
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n400_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n452_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx702_1
                        cmp              eax, 6
                                                                                        jne   .Lx702_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx702_0
.Lx702_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n456_binop_α
.Lx702_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 1296]
                        lea              rdx, [rbp + 1264]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n456_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n453_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx703_0]
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n390_var_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n457_lit_integer_α
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
                        .string          "tself"
#-----------------------------------------------------------------------------------------------------------------------
n454_op75_α:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 7
                                                                                        je    .Lx705_1
                        cmp              eax, 6
                                                                                        jne   .Lx705_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 6
                                                                                        jne   .Lx705_0
.Lx705_1:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n458_binop_α
.Lx705_0:
                        lea              rdi, [rbp + 1520]
                        lea              rsi, [rbp + 1504]
                        lea              rdx, [rbp + 1488]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n458_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n455_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx707_1
                        cmp              eax, 6
                                                                                        jne   .Lx707_0
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 6
                                                                                        jne   .Lx707_0
.Lx707_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n459_binop_α
.Lx707_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 1936]
                        lea              rdx, [rbp + 1904]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n459_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n456_binop_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n425_var_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n460_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n461_call_proc_staged_α
.Lx709_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n458_binop_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 6
                                                                                        jne   .Lx710_0
                        mov              rax, 100
                        mov              rcx, qword ptr [rbp + 1496]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1472], 6
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n462_var_α
.Lx710_0:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_α:
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n463_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n460_op75_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 7
                                                                                        je    .Lx713_1
                        cmp              eax, 6
                                                                                        jne   .Lx713_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 6
                                                                                        jne   .Lx713_0
.Lx713_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n464_op75_α
.Lx713_0:
                        lea              rdi, [rbp + 1168]
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n464_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n461_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 544]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx715_2
.Lx715_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n390_var_α
                                                                                        jmp   n465_lit_string_α
n461_call_proc_staged_β:
                                                                                        jmp   n390_var_α
.Lx715_0:
                        .quad            .Lx715_0_s
.Lx715_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n466_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n463_op75_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 7
                                                                                        je    .Lx719_1
                        cmp              eax, 6
                                                                                        jne   .Lx719_0
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 6
                                                                                        jne   .Lx719_0
.Lx719_1:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n467_op75_α
.Lx719_0:
                        lea              rdi, [rbp + 1808]
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1792]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n467_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n464_op75_α:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 7
                                                                                        je    .Lx721_1
                        cmp              eax, 6
                                                                                        jne   .Lx721_0
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx721_0
.Lx721_1:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n468_binop_α
.Lx721_0:
                        lea              rdi, [rbp + 1248]
                        lea              rsi, [rbp + 1168]
                        lea              rdx, [rbp + 1136]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n468_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n469_var_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_integer_α:
                        mov              qword ptr [rbp + 1600], 6
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n470_op75_α
.Lx723_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n467_op75_α:
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 7
                                                                                        je    .Lx725_1
                        cmp              eax, 6
                                                                                        jne   .Lx725_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx725_0
.Lx725_1:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n471_binop_α
.Lx725_0:
                        lea              rdi, [rbp + 1888]
                        lea              rsi, [rbp + 1808]
                        lea              rdx, [rbp + 1776]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n471_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n468_binop_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx726_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 6
                                                                                        jne   .Lx726_0
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rcx, qword ptr [rbp + 1144]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1120], 6
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n472_var_α
.Lx726_0:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n425_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n473_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx730_1
                        cmp              eax, 6
                                                                                        jne   .Lx730_0
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 6
                                                                                        jne   .Lx730_0
.Lx730_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n474_binop_α
.Lx730_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 1600]
                        lea              rdx, [rbp + 1568]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n474_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n471_binop_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 6
                                                                                        jne   .Lx731_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 6
                                                                                        jne   .Lx731_0
                        mov              rax, qword ptr [rbp + 1800]
                        mov              rcx, qword ptr [rbp + 1784]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1760], 6
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n475_var_α
.Lx731_0:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n475_var_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n476_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx734_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n477_call_proc_staged_α
.Lx734_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n474_binop_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n478_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n479_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n476_op75_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 7
                                                                                        je    .Lx739_1
                        cmp              eax, 6
                                                                                        jne   .Lx739_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 6
                                                                                        jne   .Lx739_0
.Lx739_1:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n480_op75_α
.Lx739_0:
                        lea              rdi, [rbp + 1120]
                        lea              rsi, [rbp + 4096]
                        lea              rdx, [rbp + 1104]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n480_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n477_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 656]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx741_2
.Lx741_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n390_var_α
                                                                                        jmp   n481_lit_string_α
n477_call_proc_staged_β:
                                                                                        jmp   n390_var_α
.Lx741_0:
                        .quad            .Lx741_0_s
.Lx741_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n478_op75_α:
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 7
                                                                                        je    .Lx743_1
                        cmp              eax, 6
                                                                                        jne   .Lx743_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 6
                                                                                        jne   .Lx743_0
.Lx743_1:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n482_op75_α
.Lx743_0:
                        lea              rdi, [rbp + 1472]
                        lea              rsi, [rbp + 1552]
                        lea              rdx, [rbp + 1456]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n482_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n479_op75_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 7
                                                                                        je    .Lx745_1
                        cmp              eax, 6
                                                                                        jne   .Lx745_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 6
                                                                                        jne   .Lx745_0
.Lx745_1:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n483_op75_α
.Lx745_0:
                        lea              rdi, [rbp + 1760]
                        lea              rsi, [rbp + 4096]
                        lea              rdx, [rbp + 1744]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n483_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n480_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx747_1
                        cmp              eax, 6
                                                                                        jne   .Lx747_0
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 6
                                                                                        jne   .Lx747_0
.Lx747_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n484_binop_α
.Lx747_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 1120]
                        lea              rdx, [rbp + 1088]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n484_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n485_var_α
.Lx748_0:
                        .quad            .Lx748_0_s
.Lx748_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n482_op75_α:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 7
                                                                                        je    .Lx750_1
                        cmp              eax, 6
                                                                                        jne   .Lx750_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 6
                                                                                        jne   .Lx750_0
.Lx750_1:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n486_binop_α
.Lx750_0:
                        lea              rdi, [rbp + 1552]
                        lea              rsi, [rbp + 1472]
                        lea              rdx, [rbp + 1440]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n486_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n483_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx752_1
                        cmp              eax, 6
                                                                                        jne   .Lx752_0
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 6
                                                                                        jne   .Lx752_0
.Lx752_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n487_binop_α
.Lx752_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 1760]
                        lea              rdx, [rbp + 1728]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n487_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n484_binop_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n425_var_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n488_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n489_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n486_binop_α:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 6
                                                                                        jne   .Lx756_0
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 6
                                                                                        jne   .Lx756_0
                        mov              rax, qword ptr [rbp + 1464]
                        mov              rcx, qword ptr [rbp + 1448]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1424], 6
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n490_var_α
.Lx756_0:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n490_var_α
#-----------------------------------------------------------------------------------------------------------------------
n487_binop_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n415_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n488_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n489_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx759_0]
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n390_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n491_disjunction_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "tlocal"
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n492_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n491_disjunction_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   n494_var_α
n491_disjunction_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx763_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n493_call_proc_staged_α
.Lx763_0:
                        cmp              eax, 1
                                                                                        jne   .Lx763_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n493_call_proc_staged_α
.Lx763_1:
                                                                                        jmp   n493_call_proc_staged_α
n491_disjunction_β:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        je    n390_var_α
                                                                                        jmp   n390_var_α
n491_disjunction_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1
                                                                                        je    n495_lit_integer_α
                                                                                        jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n492_op75_α:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 7
                                                                                        je    .Lx765_1
                        cmp              eax, 6
                                                                                        jne   .Lx765_0
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 6
                                                                                        jne   .Lx765_0
.Lx765_1:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n497_op75_α
.Lx765_0:
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 4096]
                        lea              rdx, [rbp + 1408]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n497_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_proc_staged_α:
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 784]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx767_2
.Lx767_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n491_disjunction_β
                                                                                        jmp   n498_lit_string_α
n493_call_proc_staged_β:
                                                                                        jmp   n491_disjunction_β
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n494_var_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n499_lit_integer_α
n494_var_β:
                                                                                        jmp   n491_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n491_disjunction_as
n495_lit_integer_β:
                                                                                        jmp   n390_var_α
.Lx770_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n491_disjunction_as
n496_lit_integer_β:
                                                                                        jmp   n390_var_α
.Lx771_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n497_op75_α:
                        mov              eax, dword ptr [rbp + 4096]
                        cmp              eax, 7
                                                                                        je    .Lx773_1
                        cmp              eax, 6
                                                                                        jne   .Lx773_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx773_0
.Lx773_1:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n500_binop_α
.Lx773_0:
                        lea              rdi, [rbp + 4096]
                        lea              rsi, [rbp + 1424]
                        lea              rdx, [rbp + 1392]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n500_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n501_var_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n502_binop_test_α
.Lx775_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n500_binop_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n411_lit_integer_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n414_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n502_binop_test_α:
                        mov              eax, dword ptr [rbp + 4064]
                        cmp              eax, 100
                                                                                        je    .Lx779_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 100
                                                                                        je    .Lx779_0
                        mov              eax, dword ptr [rbp + 4064]
                        cmp              eax, 6
                                                                                        jne   .Lx779_2
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx779_2
.Lx779_1:
                        mov              rax, qword ptr [rbp + 4072]
                        mov              rcx, qword ptr [rbp + 872]
                        cmp              rax, rcx
                                                                                        jne   n491_disjunction_af
                        mov              rcx, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rcx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rcx
                                                                                        jmp   n496_lit_integer_α
.Lx779_0:
                        mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 9
                        lea              r9, [rbp + 832]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx779_1
                        cmp              eax, 1
                                                                                        je    n491_disjunction_af
                                                                                        jmp   n496_lit_integer_α
.Lx779_2:
                        mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n491_disjunction_af
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n496_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n504_call_proc_staged_α
.Lx780_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n504_call_proc_staged_α:
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 992]
                        call             proc_pad_dcα
                                                                                        jmp   .Lx782_2
.Lx782_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n491_disjunction_β
                                                                                        jmp   n505_lit_string_α
n504_call_proc_staged_β:
                                                                                        jmp   n491_disjunction_β
.Lx782_0:
                        .quad            .Lx782_0_s
.Lx782_0_s:
                        .string          "pad"
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n506_lit_string_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n507_var_α
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n508_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n508_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx787_0]
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n491_disjunction_β
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n509_call_builtin_icon_α
.Lx787_0:
                        .quad            .Lx787_0_s
.Lx787_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn789:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn789]
                        lea              rsi, [rbp + 144]
                        mov              edx, 11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n491_disjunction_β
                                                                                        jmp   n510_conjunction_α
n509_call_builtin_icon_β:
                                                                                        jmp   n491_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n510_conjunction_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n390_var_α
n510_conjunction_β:
                                                                                        jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4160]
                        add              rsp, 4168
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4160]
                        add              rsp, 4168
                        ret
                        .section         .note.GNU-stack,"",@progbits
