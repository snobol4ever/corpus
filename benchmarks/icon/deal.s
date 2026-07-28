                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display_α
proc_display_α:
                        .global          proc_display_α
                        .global          proc_display_β
                        .global          proc_display_γ
                        .global          proc_display_ω
                        sub              rsp, 1840
                        mov              [rsp + 1816], rcx
                        mov              [rsp + 1824], rdx
                        mov              [rsp + 1832], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1776
                        mov              edx, 1808
                        call             rt_jmp_frame_lexprep2@PLT
proc_display_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              dword ptr [rbp + 1440], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        jne   .Lx79_0
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1_var_α
.Lx79_0:
                                                                                        jmp   n1_var_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 1440]
                                                                                        jmp   n1_var_α
n0_disjunction_af:
                        add              dword ptr [rbp + 1440], 1
                        mov              eax, dword ptr [rbp + 1440]
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n4_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052480
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n6_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_conjunction_α:
                                                                                        jmp   n0_disjunction_as
n3_conjunction_β:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        lea              rsi, [rbp + 1408]
                        call             proc_shuffle_dcα
                                                                                        jmp   .Lx85_2
.Lx85_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n5_make_list_α
                                                                                        jmp   n7_assign_α
n4_call_proc_staged_β:
                                                                                        jmp   n5_make_list_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "shuffle"
#-----------------------------------------------------------------------------------------------------------------------
n5_make_list_α:
                        lea              rdi, [rbp + 1360]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n5_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n11_assign_var_α
.Lx91_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn97:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 960]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n16_var_α
                                                                                        jmp   n16_var_α
n13_call_builtin_icon_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n17_lit_string_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n18_lit_integer_α
.Lx99_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n21_lit_integer_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n22_to_α
.Lx00002_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn106:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rbp + 752]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n24_lit_integer_α
n20_call_builtin_icon_β:
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx00003_0:
                        .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n22_to_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1248], 6
                        mov              qword ptr [rbp + 1256], rax
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1264], 6
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1232], rax
.Lx00004_0:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx
                                                                                        jg    n13_call_builtin_icon_α
                        mov              qword ptr [rbp + 1216], 6
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n26_var_α
n22_to_β:
                        inc              qword ptr [rbp + 1232]
                                                                                        jmp   .Lx00004_0
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx00005_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n27_subscript_α
.Lx00005_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n28_lit_integer_α
.Lx00006_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn113:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n30_lit_string_α
                                                                                        jmp   n29_binop_α
n25_call_builtin_icon_β:
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n31_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n20_call_builtin_icon_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n32_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n33_to_α
.Lx00007_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n34_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n35_lit_integer_α
.Lx00008_0:
                        .quad            .Lx00008_0_s
.Lx00008_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n31_op75_α:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 7
                                                                                        je    .Lx00009_1
                        cmp              eax, 6
                                                                                        jne   .Lx00009_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 6
                                                                                        jne   .Lx00009_0
.Lx00009_1:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n36_op75_α
.Lx00009_0:
                        lea              rdi, [rbp + 1216]
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1200]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n36_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n32_deref_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n20_call_builtin_icon_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n37_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n33_to_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 320], 6
                        mov              qword ptr [rbp + 328], rax
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 336], 6
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 304], rax
.Lx00010_0:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 344]
                        cmp              rax, rcx
                                                                                        jg    n68_call_builtin_icon_α
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n38_assign_α
n33_to_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx00010_0
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n39_call_builtin_icon_α
.Lx00011_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n36_op75_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 7
                                                                                        je    .Lx00012_1
                        cmp              eax, 6
                                                                                        jne   .Lx00012_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 6
                                                                                        jne   .Lx00012_0
.Lx00012_1:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n40_binop_α
.Lx00012_0:
                        lea              rdi, [rbp + 1280]
                        lea              rsi, [rbp + 1216]
                        lea              rdx, [rbp + 1184]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n37_iterate_α:
                        mov              qword ptr [rbp + 864], 0
.Lx00013_0:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 864]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              rax, 99
                                                                                        je    n20_call_builtin_icon_α
                                                                                        jmp   n41_call_builtin_icon_α
n37_iterate_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00013_0
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n42_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn132:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n1_var_α
                                                                                        jmp   n43_assign_α
n39_call_builtin_icon_β:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 100
                                                                                        je    .Lx00014_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 100
                                                                                        je    .Lx00014_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx00014_2
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx00014_2
.Lx00014_1:
                        mov              rax, qword ptr [rbp + 1208]
                        mov              rcx, qword ptr [rbp + 1192]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1168], 6
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n44_lit_integer_α
.Lx00014_0:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        mov              r8d, 2
                        lea              r9, [rbp + 1168]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n44_lit_integer_α
.Lx00014_2:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n13_call_builtin_icon_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n44_lit_integer_α
n40_binop_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn135:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 784]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n37_iterate_β
                                                                                        jmp   n37_iterate_β
n41_call_builtin_icon_β:
                                                                                        jmp   n37_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n42_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n3_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n46_op75_α
.Lx00015_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op75_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 7
                                                                                        je    .Lx00016_1
                        cmp              eax, 6
                                                                                        jne   .Lx00016_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx00016_0
.Lx00016_1:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n48_binop_α
.Lx00016_0:
                        lea              rdi, [rbp + 1168]
                        lea              rsi, [rbp + 1296]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n49_subscript_α
.Lx00017_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 100
                                                                                        je    .Lx00018_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx00018_2
.Lx00018_1:
                        mov              rax, qword ptr [rbp + 1160]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1136], 6
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n50_var_α
.Lx00018_0:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              r8d, 0
                        lea              r9, [rbp + 1136]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n50_var_α
.Lx00018_2:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n13_call_builtin_icon_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n50_var_α
n48_binop_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n53_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n52_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n33_to_β
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 100
                                                                                        je    .Lx00019_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 100
                                                                                        je    .Lx00019_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 6
                                                                                        jne   .Lx00019_2
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx00019_2
.Lx00019_1:
                        mov              rax, qword ptr [rbp + 1144]
                        mov              rcx, qword ptr [rbp + 1320]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1328], 6
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n55_subscript_α
.Lx00019_0:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 0
                        lea              r9, [rbp + 1328]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n55_subscript_α
.Lx00019_2:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n22_to_β
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n55_subscript_α
n53_binop_β:
                                                                                        jmp   n22_to_β
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              r8, qword ptr [rbp + 1328]
                        mov              r9, qword ptr [rbp + 1336]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n22_to_β
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n57_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        call             proc_show_dcα
                                                                                        jmp   .Lx00020_2
.Lx00020_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n22_to_β
                                                                                        jmp   n59_call_builtin_icon_α
n57_call_proc_staged_β:
                                                                                        jmp   n22_to_β
.Lx00020_0:
                        .quad            .Lx00020_0_s
.Lx00020_0_s:
                        .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n60_call_builtin_icon_α
.Lx00021_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn160:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n22_to_β
                                                                                        jmp   n22_to_β
n59_call_builtin_icon_β:
                                                                                        jmp   n22_to_β
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn162:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                                                                                        jmp   n61_var_ref_α
n60_call_builtin_icon_β:
                                                                                        jmp   n52_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n63_subscript_α
.Lx00022_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n65_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n66_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn172:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n52_unmark_α
                                                                                        jmp   n52_unmark_α
n67_call_builtin_icon_β:
                                                                                        jmp   n52_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rbp + 256]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n69_var_α
                                                                                        jmp   n69_var_α
n68_call_builtin_icon_β:
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n72_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n73_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx00023_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n74_subscript_α
.Lx00023_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    proc_display_ω
                                                                                        jmp   proc_display_ω
n73_call_builtin_icon_β:
                                                                                        jmp   proc_display_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n71_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n75_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n71_var_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n76_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n76_iterate_α:
                        mov              qword ptr [rbp + 160], 0
.Lx00024_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 160]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              rax, 99
                                                                                        je    n71_var_α
                                                                                        jmp   n77_call_builtin_icon_α
n76_iterate_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx00024_0
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n76_iterate_β
                                                                                        jmp   n76_iterate_β
n77_call_builtin_icon_β:
                                                                                        jmp   n76_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_display_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display_β:
                                                                                        jmp   proc_display_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1816]
                        lea              rsp, [rbp + 1840]
                        mov              rbp, [rbp + 1832]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display_ω:
                        mov              rax, [rbp + 1824]
                        lea              rsp, [rbp + 1840]
                        mov              rbp, [rbp + 1832]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display_dcα:
                        pop              r11
                        sub              rsp, 1856
                        mov              qword ptr [rsp + 1832], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1808], r11
                        lea              rax, [rip + .Lx00025_2]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rax, [rip + .Lx00025_3]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rdi, rbp
                        mov              esi, 1776
                        mov              edx, 1808
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_display_α_body
.Lx00025_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1840
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00025_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1840
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_show_α
proc_show_α:
                        .global          proc_show_α
                        .global          proc_show_β
                        .global          proc_show_γ
                        .global          proc_show_ω
                        sub              rsp, 1376
                        mov              [rsp + 1352], rcx
                        mov              [rsp + 1360], rdx
                        mov              [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1344
                        call             rt_jmp_frame_lexprep2@PLT
proc_show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00026_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00027_var_ref_α
n00026_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00028_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00029_lit_string_α
.Lx00028_0:
                                                                                        jmp   n00029_lit_string_α
n00026_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00029_lit_string_α
n00026_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00029_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx00030_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00031_var_α
.Lx00030_0:
                        .quad            .Lx00030_0_s
.Lx00030_0_s:
                        .string          "S: "
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052560
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00032_nulltest_var_α
n00027_var_ref_β:
                                                                                        jmp   n00026_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00033_conjunction_α:
                                                                                        jmp   n00026_disjunction_as
n00033_conjunction_β:
                                                                                        jmp   n00029_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 99
                                                                                        je    n00026_disjunction_af
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00026_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00026_disjunction_af
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00035_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00036_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx00037_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00038_assign_var_α
.Lx00037_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 224]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00039_2
.Lx00039_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_show_ω
                                                                                        jmp   n00040_binop_α
n00036_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00039_0:
                        .quad            .Lx00039_0_s
.Lx00039_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00038_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00026_disjunction_af
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n00041_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_binop_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n00042_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00043_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx00044_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00045_var_α
.Lx00044_0:
                        .quad            .Lx00044_0_s
.Lx00044_0_s:
                        .string          "H: "
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n00046_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00048_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00049_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx00050_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00051_call_builtin_icon_α
.Lx00050_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00052_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n00054_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00055_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn271:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00047_var_α
                                                                                        jmp   n00056_binop_α
n00051_call_builtin_icon_β:
                                                                                        jmp   n00047_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_binop_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx00058_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00059_call_builtin_icon_α
.Lx00058_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00060_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00061_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 352]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00062_2
.Lx00062_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_show_ω
                                                                                        jmp   n00063_binop_α
n00055_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00062_0:
                        .quad            .Lx00062_0_s
.Lx00062_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00064_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00065_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn280:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n00060_var_α
                                                                                        jmp   n00066_var_α
n00059_call_builtin_icon_β:
                                                                                        jmp   n00060_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx00067_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00068_call_builtin_icon_α
.Lx00067_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00069_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n00047_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx00070_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00071_call_builtin_icon_α
.Lx00070_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n00072_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn287:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n00029_lit_string_α
                                                                                        jmp   n00073_var_α
n00068_call_builtin_icon_β:
                                                                                        jmp   n00029_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx00074_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00075_var_α
.Lx00074_0:
                        .quad            .Lx00074_0_s
.Lx00074_0_s:
                        .string          "D: "
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn290:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n00053_var_α
                                                                                        jmp   n00076_binop_α
n00071_call_builtin_icon_β:
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00072_binop_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00077_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00078_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00079_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_binop_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00080_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00081_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_binop_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00082_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n00083_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00084_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00033_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_call_proc_staged_α:
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 480]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00085_2
.Lx00085_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_show_ω
                                                                                        jmp   n00086_binop_α
n00083_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00085_0:
                        .quad            .Lx00085_0_s
.Lx00085_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00084_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n00060_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_binop_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00087_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00089_var_α
.Lx00088_0:
                        .quad            .Lx00088_0_s
.Lx00088_0_s:
                        .string          "C: "
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00090_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00091_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_call_proc_staged_α:
                        lea              rsi, [rbp + 592]
                        lea              rdx, [rbp + 608]
                        call             proc_arrange_dcα
                                                                                        jmp   .Lx00092_2
.Lx00092_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    proc_show_ω
                                                                                        jmp   n00093_binop_α
n00091_call_proc_staged_β:
                                                                                        jmp   proc_show_ω
.Lx00092_0:
                        .quad            .Lx00092_0_s
.Lx00092_0_s:
                        .string          "arrange"
#-----------------------------------------------------------------------------------------------------------------------
n00093_binop_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00094_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_make_list_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00095_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_show_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_show_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_show_β:
                                                                                        jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1352]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_show_ω:
                        mov              rax, [rbp + 1360]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_show_dcα:
                        pop              r11
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1344], r11
                        lea              rax, [rip + .Lx00096_2]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rax, [rip + .Lx00096_3]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1344
                        mov              edx, 1344
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_show_α_body
.Lx00096_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1376
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00096_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1376
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_arrange_α
proc_arrange_α:
                        .global          proc_arrange_α
                        .global          proc_arrange_β
                        .global          proc_arrange_γ
                        .global          proc_arrange_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_arrange_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n00098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n00099_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n00100_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn333:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rsp + 160]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_arrange_ω
                                                                                        jmp   n00101_lit_charset_α
n00100_call_builtin_icon_β:
                                                                                        jmp   proc_arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
n00101_lit_charset_α:
                        mov              qword ptr [rsp + 272], 1
                        mov              dword ptr [rsp + 276], -1
                        mov              rax, qword ptr [rip + .Lx00102_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n00103_binop_α
.Lx00102_0:
                        .quad            .Lx00102_0_s
.Lx00102_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00103_binop_α:
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              r8d, 20
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_arrange_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n00104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n00105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n00106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn339:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rsp + 64]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_arrange_ω
                                                                                        jmp   n00107_return_α
n00106_call_builtin_icon_β:
                                                                                        jmp   proc_arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
n00107_return_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   proc_arrange_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_β:
                                                                                        jmp   proc_arrange_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 328]
                        add              rsp, 352
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_ω:
                        mov              rax, [rsp + 336]
                        add              rsp, 352
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_arrange_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 320], r11
                        lea              rax, [rip + .Lx00108_2]
                        mov              qword ptr [rsp + 328], rax
                        lea              rax, [rip + .Lx00108_3]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 320
                        mov              edx, 320
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_arrange_α_body
.Lx00108_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00108_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        .global          proc_options_α
                        .global          proc_options_β
                        .global          proc_options_γ
                        .global          proc_options_ω
                        sub              rsp, 2768
                        mov              [rsp + 2744], rcx
                        mov              [rsp + 2752], rdx
                        mov              [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2608
                        mov              edx, 2736
                        call             rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00110_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 99
                                                                                        je    n00111_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00111_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00111_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00112_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00112_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00113_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00114_call_builtin_icon_α
.Lx00113_0:
                        .quad            .Lx00113_0_s
.Lx00113_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00111_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn453:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n00115_make_list_α
                                                                                        jmp   n00116_assign_α
n00111_call_builtin_icon_β:
                                                                                        jmp   n00115_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn455:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n00111_call_builtin_icon_α
                                                                                        jmp   n00117_assign_var_α
n00114_call_builtin_icon_β:
                                                                                        jmp   n00111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00115_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00118_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00111_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn464:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00121_var_α
                                                                                        jmp   n00122_assign_α
n00120_call_builtin_icon_β:
                                                                                        jmp   n00121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00125_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00127_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00128_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn475:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n00126_var_α
                                                                                        jmp   n00129_call_builtin_icon_α
n00125_call_builtin_icon_β:
                                                                                        jmp   n00126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00130_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn480:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n00126_var_α
                                                                                        jmp   n00121_var_α
n00129_call_builtin_icon_β:
                                                                                        jmp   n00126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00131_lit_string_α
n00130_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00132_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00133_scan_α
.Lx00132_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00132_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00133_scan_α
.Lx00132_1:
                                                                                        jmp   n00133_scan_α
n00130_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00134_disjunction_β
                                                                                        jmp   n00135_scan_α
n00130_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00136_var_α
                                                                                        jmp   n00135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00119_var_α
n00133_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00130_disjunction_β
                                                                                        jmp   n00119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx00137_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00138_scan_match_α
n00131_lit_string_β:
                                                                                        jmp   n00130_disjunction_af
.Lx00137_0:
                        .quad            .Lx00137_0_s
.Lx00137_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00134_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00139_var_α
n00134_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00140_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00141_lit_integer_α
.Lx00140_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00140_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00141_lit_integer_α
.Lx00140_1:
                                                                                        jmp   n00141_lit_integer_α
n00134_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00142_disjunction_β
                                                                                        jmp   n00141_lit_integer_α
n00134_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00143_lit_string_α
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00144_var_α
n00136_var_β:
                                                                                        jmp   n00135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_conjunction_α:
                                                                                        jmp   n00130_disjunction_as
n00145_conjunction_β:
                                                                                        jmp   n00135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn492:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n00135_scan_α
                                                                                        jmp   n00130_disjunction_as
n00146_call_builtin_icon_β:
                                                                                        jmp   n00135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00138_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00147_239
                        add              rsp, 16
                                                                                        jmp   n00130_disjunction_af
.Lx00147_239:
                        mov              rdi, qword ptr [rip + .Lx00147_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00147_240
                        add              rsp, 16
                                                                                        jmp   n00130_disjunction_af
.Lx00147_240:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00148_scan_tab_α
.Lx00147_0:
                        .quad            .Lx00147_0_s
.Lx00147_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00141_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00149_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00150_scan_move_α
.Lx00149_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00139_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00151_var_α
n00139_var_β:
                                                                                        jmp   n00134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00142_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00152_lit_charset_α
n00142_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00153_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00154_assign_var_α
.Lx00153_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00153_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00154_assign_var_α
.Lx00153_1:
                                                                                        jmp   n00154_assign_var_α
n00142_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00141_lit_integer_α
                                                                                        jmp   n00141_lit_integer_α
n00142_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00155_lit_integer_α
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00156_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00157_var_α
n00143_lit_string_β:
                                                                                        jmp   n00141_lit_integer_α
.Lx00156_0:
                        .quad            .Lx00156_0_s
.Lx00156_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00154_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00141_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00134_disjunction_as
n00154_assign_var_β:
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn503:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n00141_lit_integer_α
                                                                                        jmp   n00134_disjunction_as
n00158_call_builtin_icon_β:
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_scan_α:
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00119_var_α
n00135_scan_β:
                                                                                        jmp   n00119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00159_0
                        add              rax, r15
                        add              rax, 1
.Lx00159_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00159_239
                        add              rsp, 16
                                                                                        jmp   n00130_disjunction_af
.Lx00159_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00159_240
                        add              rsp, 16
                                                                                        jmp   n00130_disjunction_af
.Lx00159_240:
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
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00160_lit_integer_α
n00148_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00130_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00150_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00161_239
                        add              rsp, 16
                                                                                        jmp   n00135_scan_α
.Lx00161_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00161_240
                        add              rsp, 16
                                                                                        jmp   n00135_scan_α
.Lx00161_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00162_assign_α
n00150_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00163_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00164_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00165_var_ref_α
n00152_lit_charset_β:
                                                                                        jmp   n00142_disjunction_af
.Lx00164_0:
                        .quad            .Lx00164_0_s
.Lx00164_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx00166_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00142_disjunction_as
n00155_lit_integer_β:
                                                                                        jmp   n00141_lit_integer_α
.Lx00166_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00167_conjunction_α:
                                                                                        jmp   n00142_disjunction_as
n00167_conjunction_β:
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00160_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx00168_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00169_scan_pos_α
.Lx00168_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00162_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00134_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00170_60:
                        .section         .rodata
.Lbynamegenfn190:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn190]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 2
                        lea              rcx, [rbp + 1872]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n00134_disjunction_af
                                                                                        jmp   n00171_lit_integer_α
n00163_call_builtin_gen_β:
                                                                                        jmp   .Lx00170_60
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00173_0
                        add              rax, r15
                        add              rax, 1
.Lx00173_0:
                        cmp              rax, 1
                                                                                        jl    n00174_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00174_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00174_var_α
                        mov              qword ptr [rbp + 2224], 6
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00148_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx00175_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00176_op75_α
.Lx00175_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00177_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00178_conjunction_α
n00174_var_β:
                                                                                        jmp   n00148_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00176_op75_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 7
                                                                                        je    .Lx00179_1
                        cmp              eax, 6
                                                                                        jne   .Lx00179_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx00179_0
.Lx00179_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00180_binop_α
.Lx00179_0:
                        lea              rdi, [rbp + 1824]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1808]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00180_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00142_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00181_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00182_disjunction_α
n00178_conjunction_β:
                                                                                        jmp   n00130_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00180_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 100
                                                                                        je    .Lx00183_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx00183_2
.Lx00183_1:
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 6
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00184_assign_α
.Lx00183_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              r8d, 0
                        lea              r9, [rbp + 1792]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00184_assign_α
.Lx00183_2:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00134_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00184_assign_α
n00180_binop_β:
                                                                                        jmp   n00134_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00181_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00142_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00182_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00186_lit_string_α
n00182_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00187_0
                                                                                        jmp   n00141_lit_integer_α
.Lx00187_0:
                                                                                        jmp   n00141_lit_integer_α
n00182_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00141_lit_integer_α
n00182_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00184_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00185_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00189_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx00190_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00191_scan_match_α
n00186_lit_string_β:
                                                                                        jmp   n00182_disjunction_af
.Lx00190_0:
                        .quad            .Lx00190_0_s
.Lx00190_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00189_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn206:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn206]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n00142_disjunction_af
                                                                                        jmp   n00193_disjunction_α
n00189_call_builtin_icon_β:
                                                                                        jmp   n00142_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00191_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00194_239
                        add              rsp, 16
                                                                                        jmp   n00182_disjunction_af
.Lx00194_239:
                        mov              rdi, qword ptr [rip + .Lx00194_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00194_240
                        add              rsp, 16
                                                                                        jmp   n00182_disjunction_af
.Lx00194_240:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00195_scan_tab_α
.Lx00194_0:
                        .quad            .Lx00194_0_s
.Lx00194_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00192_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00196_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00197_lit_string_α
n00193_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00198_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00199_assign_α
.Lx00198_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00198_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00199_assign_α
.Lx00198_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00198_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00199_assign_α
.Lx00198_2:
                                                                                        jmp   n00199_assign_α
n00193_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00193_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00193_disjunction_af
                                                                                        jmp   n00193_disjunction_af
n00193_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00200_var_α
                        cmp              eax, 2
                                                                                        je    n00201_lit_string_α
                                                                                        jmp   n00202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00203_0
                        add              rax, r15
                        add              rax, 1
.Lx00203_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00203_239
                        add              rsp, 16
                                                                                        jmp   n00182_disjunction_af
.Lx00203_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00203_240
                        add              rsp, 16
                                                                                        jmp   n00182_disjunction_af
.Lx00203_240:
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
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00204_lit_integer_α
n00195_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00182_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00196_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00141_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00142_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00202_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx00205_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00206_lit_integer_α
n00197_lit_string_β:
                                                                                        jmp   n00193_disjunction_af
.Lx00205_0:
                        .quad            .Lx00205_0_s
.Lx00205_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00207_call_builtin_icon_α
n00200_var_β:
                                                                                        jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00201_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx00208_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00209_var_α
n00201_lit_string_β:
                                                                                        jmp   n00193_disjunction_af
.Lx00208_0:
                        .quad            .Lx00208_0_s
.Lx00208_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00210_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00193_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00193_disjunction_as
n00210_binop_test_β:
                                                                                        jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn560:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00193_disjunction_af
                                                                                        jmp   n00193_disjunction_as
n00207_call_builtin_icon_β:
                                                                                        jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn562:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn562]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n00193_disjunction_af
                                                                                        jmp   n00193_disjunction_as
n00211_call_builtin_icon_β:
                                                                                        jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00204_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx00212_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00213_scan_pos_α
.Lx00212_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00206_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx00215_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00216_scan_tab_α
.Lx00215_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00209_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00211_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00217_0
                        add              rax, r15
                        add              rax, 1
.Lx00217_0:
                        cmp              rax, 1
                                                                                        jl    n00195_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00195_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00195_scan_tab_β
                        mov              qword ptr [rbp + 2080], 6
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00218_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00219_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00220_call_builtin_α
.Lx00219_0:
                        .quad            .Lx00219_0_s
.Lx00219_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00216_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00221_0
                        add              rax, r15
                        add              rax, 1
.Lx00221_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00221_239
                        add              rsp, 16
                                                                                        jmp   n00193_disjunction_af
.Lx00221_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00221_240
                        add              rsp, 16
                                                                                        jmp   n00193_disjunction_af
.Lx00221_240:
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
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00210_binop_test_α
n00216_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00218_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00121_var_α
n00218_conjunction_β:
                                                                                        jmp   n00182_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00220_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn576:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n00222_lit_string_α
                                                                                        jmp   n00223_var_α
n00220_call_builtin_β:
                                                                                        jmp   n00222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00224_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00225_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00226_call_builtin_α
.Lx00225_0:
                        .quad            .Lx00225_0_s
.Lx00225_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn582:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00228_lit_string_α
                                                                                        jmp   n00229_disjunction_α
n00226_call_builtin_β:
                                                                                        jmp   n00228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00167_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00229_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00230_var_α
n00229_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00231_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00232_assign_α
.Lx00231_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00231_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00232_assign_α
.Lx00231_1:
                                                                                        jmp   n00232_assign_α
n00229_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00229_disjunction_af
                                                                                        jmp   n00229_disjunction_af
n00229_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00233_lit_string_α
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00234_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00235_call_builtin_α
.Lx00234_0:
                        .quad            .Lx00234_0_s
.Lx00234_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00232_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00236_call_builtin_icon_α
n00230_var_β:
                                                                                        jmp   n00229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00233_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00237_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00238_var_α
n00233_lit_string_β:
                                                                                        jmp   n00229_disjunction_af
.Lx00237_0:
                        .quad            .Lx00237_0_s
.Lx00237_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn593:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n00229_disjunction_af
                                                                                        jmp   n00229_disjunction_as
n00236_call_builtin_icon_β:
                                                                                        jmp   n00229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00239_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn595:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn595]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n00229_disjunction_af
                                                                                        jmp   n00229_disjunction_as
n00239_call_builtin_icon_β:
                                                                                        jmp   n00229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn597:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n00141_lit_integer_α
                                                                                        jmp   n00240_disjunction_α
n00235_call_builtin_β:
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00240_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00242_var_α
n00240_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00243_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00244_assign_α
.Lx00243_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00243_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00244_assign_α
.Lx00243_1:
                                                                                        jmp   n00244_assign_α
n00240_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00240_disjunction_af
                                                                                        jmp   n00240_disjunction_af
n00240_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00245_lit_string_α
                                                                                        jmp   n00141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx00246_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00239_call_builtin_icon_α
.Lx00246_0:
                        .quad            .Lx00246_0_s
.Lx00246_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00244_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00247_call_builtin_icon_α
n00242_var_β:
                                                                                        jmp   n00240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00245_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx00248_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00249_var_α
n00245_lit_string_β:
                                                                                        jmp   n00240_disjunction_af
.Lx00248_0:
                        .quad            .Lx00248_0_s
.Lx00248_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn608:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00240_disjunction_af
                                                                                        jmp   n00240_disjunction_as
n00247_call_builtin_icon_β:
                                                                                        jmp   n00240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn610:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
                        lea              rsi, [rbp + 768]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00240_disjunction_af
                                                                                        jmp   n00240_disjunction_as
n00250_call_builtin_icon_β:
                                                                                        jmp   n00240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00251_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00251_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00252_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00250_call_builtin_icon_α
.Lx00252_0:
                        .quad            .Lx00252_0_s
.Lx00252_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2744]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        mov              rax, [rbp + 2752]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2736], r11
                        lea              rax, [rip + .Lx00253_2]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rax, [rip + .Lx00253_3]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2608
                        mov              edx, 2736
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_options_α_body
.Lx00253_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00253_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        .global          proc_Init___α
                        .global          proc_Init___β
                        .global          proc_Init___γ
                        .global          proc_Init___ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00255_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n00256_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00257_2
.Lx00257_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00258_call_proc_staged_α
                                                                                        jmp   n00258_call_proc_staged_α
n00256_call_proc_staged_β:
                                                                                        jmp   n00258_call_proc_staged_α
.Lx00257_0:
                        .quad            .Lx00257_0_s
.Lx00257_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00259_2
.Lx00259_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00260_call_proc_staged_α
                                                                                        jmp   n00260_call_proc_staged_α
n00258_call_proc_staged_β:
                                                                                        jmp   n00260_call_proc_staged_α
.Lx00259_0:
                        .quad            .Lx00259_0_s
.Lx00259_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00261_2
.Lx00261_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00262_disjunction_α
                                                                                        jmp   n00262_disjunction_α
n00260_call_proc_staged_β:
                                                                                        jmp   n00262_disjunction_α
.Lx00261_0:
                        .quad            .Lx00261_0_s
.Lx00261_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00262_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00263_lit_string_α
n00262_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00264_0
                                                                                        jmp   n00265_var_α
.Lx00264_0:
                                                                                        jmp   n00265_var_α
n00262_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00265_var_α
n00262_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00266_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00266_240
                        add              rsp, 16
                                                                                        jmp   n00267_var_α
.Lx00266_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00268_assign_α
.Lx00266_0:
                        .quad            .Lx00266_0_s
.Lx00266_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00263_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx00269_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00270_call_builtin_icon_α
n00263_lit_string_β:
                                                                                        jmp   n00262_disjunction_af
.Lx00269_0:
                        .quad            .Lx00269_0_s
.Lx00269_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00271_conjunction_α:
                                                                                        jmp   n00262_disjunction_as
n00271_conjunction_β:
                                                                                        jmp   n00265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00268_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00272_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00272_240
                        add              rsp, 16
                                                                                        jmp   n00273_lit_integer_α
.Lx00272_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00274_assign_α
.Lx00272_0:
                        .quad            .Lx00272_0_s
.Lx00272_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00270_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn652:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00262_disjunction_af
                                                                                        jmp   n00275_lit_string_α
n00270_call_builtin_icon_β:
                                                                                        jmp   n00262_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00274_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n00273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00273_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00276_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00277_assign_α
.Lx00276_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00275_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00278_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00279_call_builtin_icon_α
.Lx00278_0:
                        .quad            .Lx00278_0_s
.Lx00278_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00277_assign_α:
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              rdi, qword ptr [rip + .Lx00280_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00281_assign_α
.Lx00280_0:
                        .quad            .Lx00280_0_s
.Lx00280_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00279_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn658:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn658]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00282_return_α
                                                                                        jmp   n00282_return_α
n00279_call_builtin_icon_β:
                                                                                        jmp   n00282_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_assign_α:
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rip + .Lx00283_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00284_return_α
.Lx00283_0:
                        .quad            .Lx00283_0_s
.Lx00283_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00282_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00284_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___β:
                                                                                        jmp   proc_Init___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx00285_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx00285_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Init___α_body
.Lx00285_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00285_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        .global          proc_Term___α
                        .global          proc_Term___β
                        .global          proc_Term___γ
                        .global          proc_Term___ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00286_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00287_lit_string_α
n00286_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00288_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00289_var_α
.Lx00288_0:
                                                                                        jmp   n00289_var_α
n00286_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00289_var_α
n00286_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx00291_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00292_call_builtin_icon_α
n00287_lit_string_β:
                                                                                        jmp   n00293_var_α
.Lx00291_0:
                        .quad            .Lx00291_0_s
.Lx00291_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00294_conjunction_α:
                                                                                        jmp   n00286_disjunction_as
n00294_conjunction_β:
                                                                                        jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00295_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00296_call_proc_staged_α
.Lx00295_0:
                        .quad            .Lx00295_0_s
.Lx00295_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00298_2
.Lx00298_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00299_call_proc_staged_α
                                                                                        jmp   n00299_call_proc_staged_α
n00297_call_proc_staged_β:
                                                                                        jmp   n00299_call_proc_staged_α
.Lx00298_0:
                        .quad            .Lx00298_0_s
.Lx00298_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn689:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn689]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n00293_var_α
                                                                                        jmp   n00286_disjunction_af
n00292_call_builtin_icon_β:
                                                                                        jmp   n00293_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00300_2
.Lx00300_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00297_call_proc_staged_α
                                                                                        jmp   n00301_call_builtin_icon_α
n00296_call_proc_staged_β:
                                                                                        jmp   n00297_call_proc_staged_α
.Lx00300_0:
                        .quad            .Lx00300_0_s
.Lx00300_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00302_2
.Lx00302_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00303_call_proc_staged_α
                                                                                        jmp   n00303_call_proc_staged_α
n00299_call_proc_staged_β:
                                                                                        jmp   n00303_call_proc_staged_α
.Lx00302_0:
                        .quad            .Lx00302_0_s
.Lx00302_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00293_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00304_var_α
n00293_var_β:
                                                                                        jmp   n00286_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00301_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn696:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn696]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00297_call_proc_staged_α
                                                                                        jmp   n00297_call_proc_staged_α
n00301_call_builtin_icon_β:
                                                                                        jmp   n00297_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00305_2
.Lx00305_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00306_return_α
                                                                                        jmp   n00306_return_α
n00303_call_proc_staged_β:
                                                                                        jmp   n00306_return_α
.Lx00305_0:
                        .quad            .Lx00305_0_s
.Lx00305_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00307_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
n00307_assign_α:
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              rdi, qword ptr [rip + .Lx00308_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00309_var_α
.Lx00308_0:
                        .quad            .Lx00308_0_s
.Lx00308_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00309_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00310_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              rdi, qword ptr [rip + .Lx00311_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00294_conjunction_α
.Lx00311_0:
                        .quad            .Lx00311_0_s
.Lx00311_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx00312_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx00312_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 448
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Term___α_body
.Lx00312_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00312_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        .global          proc_Collections___α
                        .global          proc_Collections___β
                        .global          proc_Collections___γ
                        .global          proc_Collections___ω
                        sub              rsp, 944
                        mov              [rsp + 920], rcx
                        mov              [rsp + 928], rdx
                        mov              [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00313_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00314_var_ref_α
n00313_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00315_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00316_make_list_α
.Lx00315_0:
                                                                                        jmp   n00316_make_list_α
n00313_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00316_make_list_α
n00313_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00316_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00317_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052592
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00318_nulltest_var_α
n00314_var_ref_β:
                                                                                        jmp   n00313_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00319_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00313_disjunction_as
n00319_assign_β:
                                                                                        jmp   n00316_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00320_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 99
                                                                                        je    n00313_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00313_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00313_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00321_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00320_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00322_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00321_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00323_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00324_assign_var_α
.Lx00323_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00322_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00325_1:
                        mov              rdi, qword ptr [rip + .Lx00325_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00326_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00327_call_builtin_icon_α
n00322_keyword_icon_gen_β:
                                                                                        jmp   .Lx00325_1
.Lx00325_0:
                        .quad            .Lx00325_0_s
.Lx00325_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00328_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00329_call_builtin_icon_α
.Lx00328_0:
                        .quad            .Lx00328_0_s
.Lx00328_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00313_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00327_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn758:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn758]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00322_keyword_icon_gen_β
                                                                                        jmp   n00322_keyword_icon_gen_β
n00327_call_builtin_icon_β:
                                                                                        jmp   n00322_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00329_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn760:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn760]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00331_lit_integer_α
                                                                                        jmp   n00331_lit_integer_α
n00329_call_builtin_icon_β:
                                                                                        jmp   n00331_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00332_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00333_lit_string_α
.Lx00332_0:
                        .quad            .Lx00332_0_s
.Lx00332_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00331_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00334_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00335_var_α
.Lx00334_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00336_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00337_lit_string_α
.Lx00336_0:
                        .quad            .Lx00336_0_s
.Lx00336_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00335_var_α:
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00338_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx00339_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00340_lit_string_α
.Lx00339_0:
                        .quad            .Lx00339_0_s
.Lx00339_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00338_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00341_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00340_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx00343_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00344_make_list_α
.Lx00343_0:
                        .quad            .Lx00343_0_s
.Lx00343_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00341_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00345_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00342_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00346_assign_α
n00341_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00345_0
#-----------------------------------------------------------------------------------------------------------------------
n00344_make_list_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00319_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00347_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00347_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052576
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00349_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00350_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00350_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00351_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00352_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00351_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00341_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00352_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00351_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00354_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00355_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00355_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00351_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00356_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00356_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00351_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00357_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00358_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00359_call_builtin_icon_α
.Lx00358_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00359_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn792:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn792]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00351_unmark_α
                                                                                        jmp   n00360_call_builtin_icon_α
n00359_call_builtin_icon_β:
                                                                                        jmp   n00351_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn794:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00351_unmark_α
                                                                                        jmp   n00351_unmark_α
n00360_call_builtin_icon_β:
                                                                                        jmp   n00351_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 920]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        mov              rax, [rbp + 928]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 912], r11
                        lea              rax, [rip + .Lx00361_2]
                        mov              qword ptr [rbp + 920], rax
                        lea              rax, [rip + .Lx00361_3]
                        mov              qword ptr [rbp + 928], rax
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 912
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Collections___α_body
.Lx00361_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00361_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        .global          proc_Regions___α
                        .global          proc_Regions___β
                        .global          proc_Regions___γ
                        .global          proc_Regions___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00362_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00363_var_ref_α
n00362_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00364_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00365_make_list_α
.Lx00364_0:
                                                                                        jmp   n00365_make_list_α
n00362_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00365_make_list_α
n00362_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00365_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00366_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052624
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00367_nulltest_var_α
n00363_var_ref_β:
                                                                                        jmp   n00362_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00368_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052608], rax
                        mov              qword ptr [1879052616], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00362_disjunction_as
n00368_assign_β:
                                                                                        jmp   n00365_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00362_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00362_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00362_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00370_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00369_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00371_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00372_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00373_assign_var_α
.Lx00372_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00371_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00374_1:
                        mov              rdi, qword ptr [rip + .Lx00374_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00375_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00376_call_builtin_icon_α
n00371_keyword_icon_gen_β:
                                                                                        jmp   .Lx00374_1
.Lx00374_0:
                        .quad            .Lx00374_0_s
.Lx00374_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00375_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00377_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00378_call_builtin_icon_α
.Lx00377_0:
                        .quad            .Lx00377_0_s
.Lx00377_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00373_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00362_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn848:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn848]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00371_keyword_icon_gen_β
                                                                                        jmp   n00371_keyword_icon_gen_β
n00376_call_builtin_icon_β:
                                                                                        jmp   n00371_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00378_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn850:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn850]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00380_lit_integer_α
                                                                                        jmp   n00380_lit_integer_α
n00378_call_builtin_icon_β:
                                                                                        jmp   n00380_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00381_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00382_lit_string_α
.Lx00381_0:
                        .quad            .Lx00381_0_s
.Lx00381_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00380_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00384_var_α
.Lx00383_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00385_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00386_lit_string_α
.Lx00385_0:
                        .quad            .Lx00385_0_s
.Lx00385_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00384_var_α:
                        mov              rax, qword ptr [1879052608]
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00387_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00388_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00389_make_list_α
.Lx00388_0:
                        .quad            .Lx00388_0_s
.Lx00388_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00387_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00390_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00389_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00368_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00392_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00391_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00393_assign_α
n00390_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00392_0
#-----------------------------------------------------------------------------------------------------------------------
n00393_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00394_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052608
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00396_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00397_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00397_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00398_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00399_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00398_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00390_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00399_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00398_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00400_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00401_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00402_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00402_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00398_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00403_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00398_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00404_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00405_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00406_call_builtin_icon_α
.Lx00405_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00406_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn881:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn881]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00398_unmark_α
                                                                                        jmp   n00407_call_builtin_icon_α
n00406_call_builtin_icon_β:
                                                                                        jmp   n00398_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn883:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn883]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00398_unmark_α
                                                                                        jmp   n00398_unmark_α
n00407_call_builtin_icon_β:
                                                                                        jmp   n00398_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00408_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00408_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Regions___α_body
.Lx00408_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00408_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        .global          proc_Signature___α
                        .global          proc_Signature___β
                        .global          proc_Signature___γ
                        .global          proc_Signature___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00409_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00410_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00411_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00412_call_builtin_icon_α
n00409_keyword_icon_β:
                                                                                        jmp   n00411_keyword_icon_α
.Lx00410_0:
                        .quad            .Lx00410_0_s
.Lx00410_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00412_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn894:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00411_keyword_icon_α
                                                                                        jmp   n00411_keyword_icon_α
n00412_call_builtin_icon_β:
                                                                                        jmp   n00411_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00413_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00414_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00415_call_builtin_icon_α
n00411_keyword_icon_β:
                                                                                        jmp   n00414_keyword_icon_gen_α
.Lx00413_0:
                        .quad            .Lx00413_0_s
.Lx00413_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00415_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn897:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n00414_keyword_icon_gen_α
                                                                                        jmp   n00414_keyword_icon_gen_α
n00415_call_builtin_icon_β:
                                                                                        jmp   n00414_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00414_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00416_1:
                        mov              rdi, qword ptr [rip + .Lx00416_0]
                        mov              rsi, qword ptr [rbp + 80]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00417_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00418_call_builtin_icon_α
n00414_keyword_icon_gen_β:
                                                                                        jmp   .Lx00416_1
.Lx00416_0:
                        .quad            .Lx00416_0_s
.Lx00416_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00418_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn900:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00414_keyword_icon_gen_β
                                                                                        jmp   n00414_keyword_icon_gen_β
n00418_call_builtin_icon_β:
                                                                                        jmp   n00414_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00417_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___β:
                                                                                        jmp   proc_Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00419_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00419_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Signature___α_body
.Lx00419_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00419_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        .global          proc_Storage___α
                        .global          proc_Storage___β
                        .global          proc_Storage___γ
                        .global          proc_Storage___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00420_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00421_var_ref_α
n00420_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00422_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00423_make_list_α
.Lx00422_0:
                                                                                        jmp   n00423_make_list_α
n00420_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00423_make_list_α
n00420_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00423_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00424_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052656
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00425_nulltest_var_α
n00421_var_ref_β:
                                                                                        jmp   n00420_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00426_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052640], rax
                        mov              qword ptr [1879052648], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00420_disjunction_as
n00426_assign_β:
                                                                                        jmp   n00423_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00420_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00420_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00420_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00428_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00429_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00428_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00430_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00431_assign_var_α
.Lx00430_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00429_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00432_1:
                        mov              rdi, qword ptr [rip + .Lx00432_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00433_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00434_call_builtin_icon_α
n00429_keyword_icon_gen_β:
                                                                                        jmp   .Lx00432_1
.Lx00432_0:
                        .quad            .Lx00432_0_s
.Lx00432_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00433_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00435_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00436_call_builtin_icon_α
.Lx00435_0:
                        .quad            .Lx00435_0_s
.Lx00435_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00431_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00420_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00434_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn955:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn955]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00429_keyword_icon_gen_β
                                                                                        jmp   n00429_keyword_icon_gen_β
n00434_call_builtin_icon_β:
                                                                                        jmp   n00429_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00436_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn957:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn957]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00438_lit_integer_α
                                                                                        jmp   n00438_lit_integer_α
n00436_call_builtin_icon_β:
                                                                                        jmp   n00438_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00437_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00439_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00440_lit_string_α
.Lx00439_0:
                        .quad            .Lx00439_0_s
.Lx00439_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00438_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00441_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00442_var_α
.Lx00441_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00440_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00443_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00444_lit_string_α
.Lx00443_0:
                        .quad            .Lx00443_0_s
.Lx00443_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00442_var_α:
                        mov              rax, qword ptr [1879052640]
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00445_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00446_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00447_make_list_α
.Lx00446_0:
                        .quad            .Lx00446_0_s
.Lx00446_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00445_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00448_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00449_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00447_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00426_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00450_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00449_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00451_assign_α
n00448_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00450_0
#-----------------------------------------------------------------------------------------------------------------------
n00451_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00452_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052640
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00455_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00456_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00457_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00448_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00457_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00456_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00459_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00459_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00460_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00460_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00456_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00461_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00461_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00456_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00462_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00463_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00464_call_builtin_icon_α
.Lx00463_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00464_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn988:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn988]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00456_unmark_α
                                                                                        jmp   n00465_call_builtin_icon_α
n00464_call_builtin_icon_β:
                                                                                        jmp   n00456_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn990:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn990]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00456_unmark_α
                                                                                        jmp   n00456_unmark_α
n00465_call_builtin_icon_β:
                                                                                        jmp   n00456_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00466_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00466_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Storage___α_body
.Lx00466_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00466_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        .global          proc_Time___α
                        .global          proc_Time___β
                        .global          proc_Time___γ
                        .global          proc_Time___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00467_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00468_var_ref_α
n00467_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00469_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00470_keyword_icon_α
.Lx00469_0:
                                                                                        jmp   n00470_keyword_icon_α
n00467_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00470_keyword_icon_α
n00467_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00470_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00471_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00472_var_α
n00470_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00471_0:
                        .quad            .Lx00471_0_s
.Lx00471_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00468_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052688
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00473_nulltest_var_α
n00468_var_ref_β:
                                                                                        jmp   n00467_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00474_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052672], rax
                        mov              qword ptr [1879052680], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00467_disjunction_as
n00474_assign_β:
                                                                                        jmp   n00470_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00472_var_α:
                        mov              rax, qword ptr [1879052672]
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00475_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n00467_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00467_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00467_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00476_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00475_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx00477_1
                        cmp              eax, 6
                                                                                        jne   .Lx00477_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx00477_0
.Lx00477_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00478_op75_α
.Lx00477_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00478_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00476_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx00479_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00480_assign_var_α
.Lx00479_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00478_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx00481_1
                        cmp              eax, 6
                                                                                        jne   .Lx00481_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx00481_0
.Lx00481_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00482_binop_α
.Lx00481_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00482_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00467_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00483_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 100
                                                                                        je    .Lx00484_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx00484_0
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx00484_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx00484_2
.Lx00484_1:
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00485_return_α
.Lx00484_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 1
                        lea              r9, [rbp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00485_return_α
.Lx00484_2:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00485_return_α
n00482_binop_β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
n00483_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00486_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00470_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00474_assign_α
n00483_keyword_icon_β:
                                                                                        jmp   n00470_keyword_icon_α
.Lx00486_0:
                        .quad            .Lx00486_0_s
.Lx00486_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00485_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00487_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00487_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Time___α_body
.Lx00487_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00487_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shuffle_α
proc_shuffle_α:
                        .global          proc_shuffle_α
                        .global          proc_shuffle_β
                        .global          proc_shuffle_γ
                        .global          proc_shuffle_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
proc_shuffle_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00488_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00489_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1036:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1036]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00490_var_ref_α
                                                                                        jmp   n00491_assign_α
n00489_call_builtin_icon_β:
                                                                                        jmp   n00490_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00492_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00490_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00492_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx00493_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    n00494_var_α
                                                                                        jmp   n00495_var_ref_α
n00492_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx00493_0
#-----------------------------------------------------------------------------------------------------------------------
n00495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n00496_random_α
#-----------------------------------------------------------------------------------------------------------------------
n00496_random_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n00494_var_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00497_swap_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_swap_var_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_swap_var@PLT
                        cmp              eax, 99
                                                                                        je    n00494_var_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00492_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00494_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00498_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_shuffle_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_β:
                                                                                        jmp   proc_shuffle_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shuffle_dcα:
                        pop              r11
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 224], r11
                        lea              rax, [rip + .Lx00499_2]
                        mov              qword ptr [rbp + 232], rax
                        lea              rax, [rip + .Lx00499_3]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 224
                        mov              edx, 224
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_shuffle_α_body
.Lx00499_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00499_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_display_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1808
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_display_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1344
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "arrange"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_arrange_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_arrange_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_options_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_options_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Init___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Init___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Term___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Term___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Collections___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Collections___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Regions___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Regions___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Signature___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Signature___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Storage___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Storage___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Time___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Time___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "shuffle"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_shuffle_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_shuffle_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "deck"
.Lgvan1:                .string          "deckimage"
.Lgvan2:                .string          "handsize"
.Lgvan3:                .string          "suitsize"
.Lgvan4:                .string          "denom"
.Lgvan5:                .string          "rank"
.Lgvan6:                .string          "blanker"
.Lgvan7:                .string          "Save__"
.Lgvan8:                .string          "Saves__"
.Lgvan9:                .string          "Name__"
.Lgvan10:               .string          "display__STATIC__bar"
.Lgvan11:               .string          "display__STATIC__offset"
.Lgvan12:               .string          "display__INITFLAG__0"
.Lgvan13:               .string          "show__STATIC__clubmap"
.Lgvan14:               .string          "show__STATIC__diamondmap"
.Lgvan15:               .string          "show__STATIC__heartmap"
.Lgvan16:               .string          "show__STATIC__spademap"
.Lgvan17:               .string          "show__INITFLAG__0"
.Lgvan18:               .string          "Collections____STATIC__labels"
.Lgvan19:               .string          "Collections____INITFLAG__0"
.Lgvan20:               .string          "Regions____STATIC__labels"
.Lgvan21:               .string          "Regions____INITFLAG__0"
.Lgvan22:               .string          "Storage____STATIC__labels"
.Lgvan23:               .string          "Storage____INITFLAG__0"
.Lgvan24:               .string          "Time____STATIC__lasttime"
.Lgvan25:               .string          "Time____INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 26
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 26
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 1016
                        mov              rdi, rsp
                        mov              ecx, 1016
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1008], rbp
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
n00500_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx00501_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00502_call_proc_staged_α
.Lx00501_0:
                        .quad            .Lx00501_0_s
.Lx00501_0_s:
                        .string          "deal"
#-----------------------------------------------------------------------------------------------------------------------
n00502_call_proc_staged_α:
                        lea              rsi, [rbp + 960]
                        call             proc_Init___dcα
                                                                                        jmp   .Lx00503_2
.Lx00503_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n00504_lit_charset_α
                                                                                        jmp   n00504_lit_charset_α
n00502_call_proc_staged_β:
                                                                                        jmp   n00504_lit_charset_α
.Lx00503_0:
                        .quad            .Lx00503_0_s
.Lx00503_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00504_lit_charset_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              dword ptr [rbp + 900], -1
                        mov              rax, qword ptr [rip + .Lx00505_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00506_call_builtin_icon_α
.Lx00505_0:
                        .quad            .Lx00505_0_s
.Lx00505_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00506_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn1105:             .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1105]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n00507_var_α
                                                                                        jmp   n00508_assign_α
n00506_call_builtin_icon_β:
                                                                                        jmp   n00507_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00509_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00510_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00507_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00510_unop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00511_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx00513_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00514_assign_α
.Lx00513_0:
                        .quad            .Lx00513_0_s
.Lx00513_0_s:
                        .string          "AKQJT98765432"
#-----------------------------------------------------------------------------------------------------------------------
n00511_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx00515_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00516_op75_α
.Lx00515_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00514_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00517_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_op75_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 7
                                                                                        je    .Lx00518_1
                        cmp              eax, 6
                                                                                        jne   .Lx00518_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx00518_0
.Lx00518_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00519_binop_α
.Lx00518_0:
                        lea              rdi, [rbp + 784]
                        lea              rsi, [rbp + 816]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00519_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00517_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx00520_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00521_var_α
.Lx00520_0:
                        .quad            .Lx00520_0_s
.Lx00520_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00519_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 100
                                                                                        je    .Lx00522_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx00522_2
.Lx00522_1:
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 4
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00523_assign_α
.Lx00522_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 3
                        lea              r9, [rbp + 752]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00523_assign_α
.Lx00522_2:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00512_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00523_assign_α
n00519_binop_β:
                                                                                        jmp   n00512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00524_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00525_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00524_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn1120:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1120]
                        lea              rsi, [rbp + 640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n00526_lit_charset_α
                                                                                        jmp   n00527_assign_α
n00524_call_builtin_icon_β:
                                                                                        jmp   n00526_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_lit_charset_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              dword ptr [rbp + 564], -1
                        mov              rax, qword ptr [rip + .Lx00528_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00529_lit_integer_α
.Lx00528_0:
                        .quad            .Lx00528_0_s
.Lx00528_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00525_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00527_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n00526_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00529_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx00530_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00531_var_α
.Lx00530_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00531_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00532_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00532_binop_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 100
                                                                                        je    .Lx00533_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx00533_2
.Lx00533_1:
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 600]
                        add              rax, rcx
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00534_subscript_α
.Lx00533_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 0
                        lea              r9, [rbp + 608]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00534_subscript_α
.Lx00533_2:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00535_var_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00534_subscript_α
n00532_binop_β:
                                                                                        jmp   n00535_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00535_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00536_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00534_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        mov              r8, qword ptr [rbp + 608]
                        mov              r9, qword ptr [rbp + 616]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n00535_var_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00537_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx00538_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00539_call_proc_staged_α
.Lx00538_0:
                        .quad            .Lx00538_0_s
.Lx00538_0_s:
                        .string          "h+s+"
#-----------------------------------------------------------------------------------------------------------------------
n00540_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n00541_var_ref_α
n00540_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx00542_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00543_assign_α
.Lx00542_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00542_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00543_assign_α
.Lx00542_1:
                                                                                        jmp   n00543_assign_α
n00540_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n00540_disjunction_af
                                                                                        jmp   n00540_disjunction_af
n00540_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n00544_lit_integer_α
                                                                                        jmp   n00545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00535_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00539_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 528]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00546_2
.Lx00546_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n00540_disjunction_α
                                                                                        jmp   n00547_assign_α
n00539_call_proc_staged_β:
                                                                                        jmp   n00540_disjunction_α
.Lx00546_0:
                        .quad            .Lx00546_0_s
.Lx00546_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00543_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00541_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00548_lit_string_α
n00541_var_ref_β:
                                                                                        jmp   n00540_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00544_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx00549_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00540_disjunction_as
n00544_lit_integer_β:
                                                                                        jmp   n00540_disjunction_af
.Lx00549_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00550_unop_test_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 99
                                                                                        je    n00540_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00540_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00540_disjunction_as
n00550_unop_test_β:
                                                                                        jmp   n00540_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00547_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00540_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00545_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00551_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx00552_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00553_subscript_α
.Lx00552_0:
                        .quad            .Lx00552_0_s
.Lx00552_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx00554_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00555_subscript_α
.Lx00554_0:
                        .quad            .Lx00554_0_s
.Lx00554_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n00553_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00540_disjunction_af
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00556_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00557_lit_integer_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00558_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_deref_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00540_disjunction_af
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00550_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_deref_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00557_lit_integer_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00559_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx00560_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00561_var_α
.Lx00560_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00559_unop_test_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 99
                                                                                        je    n00557_lit_integer_α
                        cmp              eax, 0
                                                                                        je    n00557_lit_integer_α
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00562_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00561_var_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00563_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00562_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 99
                                                                                        je    n00557_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n00557_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00563_to_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 80], rax
.Lx00564_0:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 120]
                        cmp              rax, rcx
                                                                                        jg    n00565_call_proc_staged_α
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00566_bound_α
n00563_to_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00564_0
#-----------------------------------------------------------------------------------------------------------------------
n00565_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00567_2
.Lx00567_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n00565_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00567_0:
                        .quad            .Lx00567_0_s
.Lx00567_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00566_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n00568_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_call_proc_staged_α:
                        call             proc_display_dcα
                                                                                        jmp   .Lx00569_2
.Lx00569_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00570_unmark_α
                                                                                        jmp   n00570_unmark_α
n00568_call_proc_staged_β:
                                                                                        jmp   n00570_unmark_α
.Lx00569_0:
                        .quad            .Lx00569_0_s
.Lx00569_0_s:
                        .string          "display"
#-----------------------------------------------------------------------------------------------------------------------
n00570_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n00563_to_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1008]
                        add              rsp, 1016
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1008]
                        add              rsp, 1016
                        ret
                        .section         .note.GNU-stack,"",@progbits
