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
                        sub              rsp, 6408
                        mov              rdi, rsp
                        mov              ecx, 6408
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 6400], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 6304], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n1_assign_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 6304]
                        mov              rdx, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 6288], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n3_assign_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 6288]
                        mov              rdx, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 6224], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n5_var_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "A. "
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:
                        mov              qword ptr [rbp + 6256], 0
.Lx289_0:
                        mov              rdi, qword ptr [rbp + 6272]
                        mov              rsi, qword ptr [rbp + 6280]
                        mov              rdx, qword ptr [rbp + 6256]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                        cmp              rax, 99
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n8_call_builtin_icon_α
n6_iterate_β:
                        inc              qword ptr [rbp + 6256]
                                                                                        jmp   .Lx289_0
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n9_var_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "B. "
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6176], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6184], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6200], rax
                        .section         .rodata
.Lrkfn292:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rbp + 6176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 99
                                                                                        je    n6_iterate_β
                                                                                        jmp   n7_lit_string_α
n8_call_builtin_icon_β:
                                                                                        jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n10_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n10_iterate_α:
                        mov              qword ptr [rbp + 6128], 0
.Lx296_0:
                        mov              rdi, qword ptr [rbp + 6144]
                        mov              rsi, qword ptr [rbp + 6152]
                        mov              rdx, qword ptr [rbp + 6128]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              rax, 99
                                                                                        je    n11_lit_integer_α
                                                                                        jmp   n12_call_builtin_icon_α
n10_iterate_β:
                        inc              qword ptr [rbp + 6128]
                                                                                        jmp   .Lx296_0
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 5696], 6
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 5704], rax
                                                                                        jmp   n13_lit_integer_α
.Lx297_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6072], rax
                        .section         .rodata
.Lrkfn299:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 6048]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                        cmp              eax, 99
                                                                                        je    n10_iterate_β
                                                                                        jmp   n10_iterate_β
n12_call_builtin_icon_β:
                                                                                        jmp   n10_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 5712], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n14_to_α
.Lx300_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n14_to_α:
                        mov              rdi, qword ptr [rbp + 5696]
                        mov              rsi, qword ptr [rbp + 5704]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5696], 6
                        mov              qword ptr [rbp + 5704], rax
                        mov              rdi, qword ptr [rbp + 5712]
                        mov              rsi, qword ptr [rbp + 5720]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5712], 6
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5680], rax
.Lx302_0:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              rcx, qword ptr [rbp + 5720]
                        cmp              rax, rcx
                                                                                        jg    n28_lit_integer_α
                        mov              qword ptr [rbp + 5664], 6
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n15_assign_α
n14_to_β:
                        inc              qword ptr [rbp + 5680]
                                                                                        jmp   .Lx302_0
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              rdx, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n16_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n16_bound_α:
                        mov              qword ptr [rbp + 5728], rsp
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 5872], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n18_var_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "C "
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 5904], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n21_disjunction_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n20_unmark_α:
                        mov              rsp, qword ptr [rbp + 5728]
                                                                                        jmp   n14_to_β
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:
                        mov              qword ptr [rbp + 5920], 0
                        mov              qword ptr [rbp + 5928], 0
                        mov              dword ptr [rbp + 5936], 0
                                                                                        jmp   n23_var_ref_α
n21_disjunction_as:
                        mov              eax, dword ptr [rbp + 5936]
                        cmp              eax, 0
                                                                                        jne   .Lx313_0
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n22_call_builtin_icon_α
.Lx313_0:
                        cmp              eax, 1
                                                                                        jne   .Lx313_1
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n22_call_builtin_icon_α
.Lx313_1:
                                                                                        jmp   n22_call_builtin_icon_α
n21_disjunction_β:
                        mov              eax, dword ptr [rbp + 5936]
                        cmp              eax, 0
                                                                                        je    n21_disjunction_af
                                                                                        jmp   n21_disjunction_af
n21_disjunction_af:
                        add              dword ptr [rbp + 5936], 1
                        mov              eax, dword ptr [rbp + 5936]
                        cmp              eax, 1
                                                                                        je    n24_lit_string_α
                                                                                        jmp   n20_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5800], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5848], rax
                        .section         .rodata
.Lrkfn315:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]
                        lea              rsi, [rbp + 5792]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                        cmp              eax, 99
                                                                                        je    n21_disjunction_β
                                                                                        jmp   n20_unmark_α
n22_call_builtin_icon_β:
                                                                                        jmp   n21_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx
                                                                                        jmp   n26_var_α
n23_var_ref_β:
                                                                                        jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 6016], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n21_disjunction_as
n24_lit_string_β:
                                                                                        jmp   n21_disjunction_af
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n25_deref_α:
                        mov              rdi, qword ptr [rbp + 5984]
                        mov              rsi, qword ptr [rbp + 5992]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n21_disjunction_af
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   n21_disjunction_as
n25_deref_β:
                                                                                        jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n27_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:
                        mov              rdi, qword ptr [rbp + 5952]
                        mov              rsi, qword ptr [rbp + 5960]
                        mov              rdx, qword ptr [rbp + 5968]
                        mov              rcx, qword ptr [rbp + 5976]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n21_disjunction_af
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                                                                                        jmp   n25_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 5312], 6
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n29_lit_integer_α
.Lx323_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 5328], 6
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n30_lit_integer_α
.Lx324_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 5344], 6
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n31_to_by_α
.Lx325_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n31_to_by_α:
                        mov              rdi, qword ptr [rbp + 5312]
                        mov              rsi, qword ptr [rbp + 5320]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5312], 6
                        mov              qword ptr [rbp + 5320], rax
                        mov              rdi, qword ptr [rbp + 5328]
                        mov              rsi, qword ptr [rbp + 5336]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5328], 6
                        mov              qword ptr [rbp + 5336], rax
                        mov              rdi, qword ptr [rbp + 5344]
                        mov              rsi, qword ptr [rbp + 5352]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5344], 6
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5296], rax
.Lx327_0:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              rcx, qword ptr [rbp + 5336]
                        mov              rdx, qword ptr [rbp + 5352]
                        cmp              rdx, 0
                                                                                        jl    .Lx327_1
                        cmp              rax, rcx
                                                                                        jg    n33_lit_integer_α
                                                                                        jmp   .Lx327_2
.Lx327_1:
                        cmp              rax, rcx
                                                                                        jl    n33_lit_integer_α
.Lx327_2:
                        mov              qword ptr [rbp + 5280], 6
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n32_assign_α
n31_to_by_β:
                        mov              rdx, qword ptr [rbp + 5352]
                        mov              rax, qword ptr [rbp + 5296]
                        add              rax, rdx
                        mov              qword ptr [rbp + 5296], rax
                                                                                        jmp   .Lx327_0
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n34_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 4944], 6
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 4952], rax
                                                                                        jmp   n35_lit_integer_α
.Lx329_0:
                        .quad            18446744073709551606
#-----------------------------------------------------------------------------------------------------------------------
n34_bound_α:
                        mov              qword ptr [rbp + 5360], rsp
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 4960], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n37_to_α
.Lx332_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 5504], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n38_var_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "D "
#-----------------------------------------------------------------------------------------------------------------------
n37_to_α:
                        mov              rdi, qword ptr [rbp + 4944]
                        mov              rsi, qword ptr [rbp + 4952]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4944], 6
                        mov              qword ptr [rbp + 4952], rax
                        mov              rdi, qword ptr [rbp + 4960]
                        mov              rsi, qword ptr [rbp + 4968]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4960], 6
                        mov              qword ptr [rbp + 4968], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4928], rax
.Lx335_0:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rcx, qword ptr [rbp + 4968]
                        cmp              rax, rcx
                                                                                        jg    n40_lit_integer_α
                        mov              qword ptr [rbp + 4912], 6
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n39_assign_α
n37_to_β:
                        inc              qword ptr [rbp + 4928]
                                                                                        jmp   .Lx335_0
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5528], rax
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              rdx, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n43_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 4560], 6
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n44_lit_integer_α
.Lx339_0:
                        .quad            18446744073709551606
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 5536], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n45_disjunction_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n42_unmark_α:
                        mov              rsp, qword ptr [rbp + 5360]
                                                                                        jmp   n31_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n43_bound_α:
                        mov              qword ptr [rbp + 4976], rsp
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 4576], 6
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n47_to_α
.Lx345_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n45_disjunction_α:
                        mov              qword ptr [rbp + 5552], 0
                        mov              qword ptr [rbp + 5560], 0
                        mov              dword ptr [rbp + 5568], 0
                                                                                        jmp   n49_var_ref_α
n45_disjunction_as:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 0
                                                                                        jne   .Lx347_0
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n48_call_builtin_icon_α
.Lx347_0:
                        cmp              eax, 1
                                                                                        jne   .Lx347_1
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n48_call_builtin_icon_α
.Lx347_1:
                                                                                        jmp   n48_call_builtin_icon_α
n45_disjunction_β:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 0
                                                                                        je    n45_disjunction_af
                                                                                        jmp   n45_disjunction_af
n45_disjunction_af:
                        add              dword ptr [rbp + 5568], 1
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 1
                                                                                        je    n50_lit_string_α
                                                                                        jmp   n42_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 5120], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n52_var_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "E "
#-----------------------------------------------------------------------------------------------------------------------
n47_to_α:
                        mov              rdi, qword ptr [rbp + 4560]
                        mov              rsi, qword ptr [rbp + 4568]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4560], 6
                        mov              qword ptr [rbp + 4568], rax
                        mov              rdi, qword ptr [rbp + 4576]
                        mov              rsi, qword ptr [rbp + 4584]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4576], 6
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4544], rax
.Lx350_0:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              rcx, qword ptr [rbp + 4584]
                        cmp              rax, rcx
                                                                                        jg    n54_lit_integer_α
                        mov              qword ptr [rbp + 4528], 6
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   n53_assign_α
n47_to_β:
                        inc              qword ptr [rbp + 4544]
                                                                                        jmp   .Lx350_0
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5464], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5480], rax
                        .section         .rodata
.Lrkfn352:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rbp + 5424]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              eax, 99
                                                                                        je    n45_disjunction_β
                                                                                        jmp   n42_unmark_α
n48_call_builtin_icon_β:
                                                                                        jmp   n45_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n55_var_α
n49_var_ref_β:
                                                                                        jmp   n45_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 5648], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n45_disjunction_as
n50_lit_string_β:
                                                                                        jmp   n45_disjunction_af
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:
                        mov              rdi, qword ptr [rbp + 5616]
                        mov              rsi, qword ptr [rbp + 5624]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n45_disjunction_af
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n45_disjunction_as
n51_deref_β:
                                                                                        jmp   n45_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5144], rax
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rbp + 4528]
                        mov              rdx, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n58_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 6
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n59_lit_integer_α
.Lx360_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5608], rax
                                                                                        jmp   n60_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 5152], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n61_disjunction_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n57_unmark_α:
                        mov              rsp, qword ptr [rbp + 4976]
                                                                                        jmp   n37_to_β
#-----------------------------------------------------------------------------------------------------------------------
n58_bound_α:
                        mov              qword ptr [rbp + 4592], rsp
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 4192], 6
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n63_to_α
.Lx368_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:
                        mov              rdi, qword ptr [rbp + 5584]
                        mov              rsi, qword ptr [rbp + 5592]
                        mov              rdx, qword ptr [rbp + 5600]
                        mov              rcx, qword ptr [rbp + 5608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n45_disjunction_af
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                                                                                        jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_disjunction_α:
                        mov              qword ptr [rbp + 5168], 0
                        mov              qword ptr [rbp + 5176], 0
                        mov              dword ptr [rbp + 5184], 0
                                                                                        jmp   n65_var_α
n61_disjunction_as:
                        mov              eax, dword ptr [rbp + 5184]
                        cmp              eax, 0
                                                                                        jne   .Lx371_0
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n64_call_builtin_icon_α
.Lx371_0:
                        cmp              eax, 1
                                                                                        jne   .Lx371_1
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n64_call_builtin_icon_α
.Lx371_1:
                                                                                        jmp   n64_call_builtin_icon_α
n61_disjunction_β:
                        mov              eax, dword ptr [rbp + 5184]
                        cmp              eax, 0
                                                                                        je    n61_disjunction_af
                                                                                        jmp   n61_disjunction_af
n61_disjunction_af:
                        add              dword ptr [rbp + 5184], 1
                        mov              eax, dword ptr [rbp + 5184]
                        cmp              eax, 1
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n57_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 4736], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n68_var_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "F "
#-----------------------------------------------------------------------------------------------------------------------
n63_to_α:
                        mov              rdi, qword ptr [rbp + 4176]
                        mov              rsi, qword ptr [rbp + 4184]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4176], 6
                        mov              qword ptr [rbp + 4184], rax
                        mov              rdi, qword ptr [rbp + 4192]
                        mov              rsi, qword ptr [rbp + 4200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4192], 6
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4160], rax
.Lx374_0:
                        mov              rax, qword ptr [rbp + 4160]
                        mov              rcx, qword ptr [rbp + 4200]
                        cmp              rax, rcx
                                                                                        jg    n70_var_ref_α
                        mov              qword ptr [rbp + 4144], 6
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n69_assign_α
n63_to_β:
                        inc              qword ptr [rbp + 4160]
                                                                                        jmp   .Lx374_0
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5080], rax
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5096], rax
                        .section         .rodata
.Lrkfn376:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn376]
                        lea              rsi, [rbp + 5040]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    n61_disjunction_β
                                                                                        jmp   n57_unmark_α
n64_call_builtin_icon_β:
                                                                                        jmp   n61_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n71_lit_integer_α
n65_var_β:
                                                                                        jmp   n61_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 5264], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n61_disjunction_as
n66_lit_string_β:
                                                                                        jmp   n61_disjunction_af
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:
                        mov              rdi, qword ptr [rbp + 5216]
                        mov              rsi, qword ptr [rbp + 5224]
                        mov              rdx, qword ptr [rbp + 5232]
                        mov              rcx, qword ptr [rbp + 5240]
                        mov              r8, qword ptr [rbp + 5248]
                        mov              r9, qword ptr [rbp + 5256]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n61_disjunction_af
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                                                                                        jmp   n61_disjunction_as
n67_subscript_β:
                                                                                        jmp   n61_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              rdx, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n74_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n75_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 6
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n76_var_α
.Lx386_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n77_disjunction_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n73_unmark_α:
                        mov              rsp, qword ptr [rbp + 4592]
                                                                                        jmp   n47_to_β
#-----------------------------------------------------------------------------------------------------------------------
n74_bound_α:
                        mov              qword ptr [rbp + 4208], rsp
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_iterate_α:
                        mov              qword ptr [rbp + 4080], 0
.Lx393_0:
                        mov              rdi, qword ptr [rbp + 4096]
                        mov              rsi, qword ptr [rbp + 4104]
                        mov              rdx, qword ptr [rbp + 4080]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              rax, 99
                                                                                        je    n80_lit_string_α
                                                                                        jmp   n79_lit_string_α
n75_iterate_β:
                        inc              qword ptr [rbp + 4080]
                                                                                        jmp   .Lx393_0
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5256], rax
                                                                                        jmp   n67_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_disjunction_α:
                        mov              qword ptr [rbp + 4784], 0
                        mov              qword ptr [rbp + 4792], 0
                        mov              dword ptr [rbp + 4800], 0
                                                                                        jmp   n82_var_α
n77_disjunction_as:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 0
                                                                                        jne   .Lx397_0
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n81_call_builtin_icon_α
.Lx397_0:
                        cmp              eax, 1
                                                                                        jne   .Lx397_1
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n81_call_builtin_icon_α
.Lx397_1:
                                                                                        jmp   n81_call_builtin_icon_α
n77_disjunction_β:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 0
                                                                                        je    n77_disjunction_af
                                                                                        jmp   n77_disjunction_af
n77_disjunction_af:
                        add              dword ptr [rbp + 4800], 1
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 1
                                                                                        je    n83_lit_string_α
                                                                                        jmp   n73_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 4352], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n85_var_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "G "
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n86_assign_var_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n87_var_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "H. "
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4680], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn402:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]
                        lea              rsi, [rbp + 4656]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 99
                                                                                        je    n77_disjunction_β
                                                                                        jmp   n73_unmark_α
n81_call_builtin_icon_β:
                                                                                        jmp   n77_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   n88_lit_integer_α
n82_var_β:
                                                                                        jmp   n77_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 4896], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n77_disjunction_as
n83_lit_string_β:
                                                                                        jmp   n77_disjunction_af
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        mov              rdi, qword ptr [rbp + 4832]
                        mov              rsi, qword ptr [rbp + 4840]
                        mov              rdx, qword ptr [rbp + 4848]
                        mov              rcx, qword ptr [rbp + 4856]
                        mov              r8, qword ptr [rbp + 4880]
                        mov              r9, qword ptr [rbp + 4888]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n77_disjunction_af
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   n77_disjunction_as
n84_subscript_β:
                                                                                        jmp   n77_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 4128]
                        mov              rcx, qword ptr [rbp + 4136]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n80_lit_string_α
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n91_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 4848], 6
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n93_var_α
.Lx412_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 4384], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n94_disjunction_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n90_unmark_α:
                        mov              rsp, qword ptr [rbp + 4208]
                                                                                        jmp   n63_to_β
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn417:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rbp + 3984]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    n92_var_ref_α
                                                                                        jmp   n92_var_ref_α
n91_call_builtin_icon_β:
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n95_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n96_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n94_disjunction_α:
                        mov              qword ptr [rbp + 4400], 0
                        mov              qword ptr [rbp + 4408], 0
                        mov              dword ptr [rbp + 4416], 0
                                                                                        jmp   n98_var_α
n94_disjunction_as:
                        mov              eax, dword ptr [rbp + 4416]
                        cmp              eax, 0
                                                                                        jne   .Lx423_0
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n97_call_builtin_icon_α
.Lx423_0:
                        cmp              eax, 1
                                                                                        jne   .Lx423_1
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n97_call_builtin_icon_α
.Lx423_1:
                                                                                        jmp   n97_call_builtin_icon_α
n94_disjunction_β:
                        mov              eax, dword ptr [rbp + 4416]
                        cmp              eax, 0
                                                                                        je    n94_disjunction_af
                                                                                        jmp   n94_disjunction_af
n94_disjunction_af:
                        add              dword ptr [rbp + 4416], 1
                        mov              eax, dword ptr [rbp + 4416]
                        cmp              eax, 1
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n90_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n95_iterate_α:
                        mov              qword ptr [rbp + 3904], 0
.Lx425_0:
                        mov              rdi, qword ptr [rbp + 3920]
                        mov              rsi, qword ptr [rbp + 3928]
                        mov              rdx, qword ptr [rbp + 3904]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              rax, 99
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n101_lit_string_α
n95_iterate_β:
                        inc              qword ptr [rbp + 3904]
                                                                                        jmp   .Lx425_0
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:
                        mov              eax, dword ptr [rbp + 6336]
                        cmp              eax, 6
                                                                                        jne   .Lx426_0
                        mov              rax, 3
                        mov              rcx, qword ptr [rbp + 6344]
                        add              rax, rcx
                        mov              qword ptr [rbp + 4880], 6
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n84_subscript_α
.Lx426_0:
                        mov              rdi, qword ptr [rbp + 4848]
                        mov              rsi, qword ptr [rbp + 4856]
                        mov              rdx, qword ptr [rbp + 6336]
                        mov              rcx, qword ptr [rbp + 6344]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n77_disjunction_af
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n84_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4280], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4328], rax
                        .section         .rodata
.Lrkfn428:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rbp + 4272]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    n94_disjunction_β
                                                                                        jmp   n90_unmark_α
n97_call_builtin_icon_β:
                                                                                        jmp   n94_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n103_lit_integer_α
n98_var_β:
                                                                                        jmp   n94_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n94_disjunction_as
n99_lit_string_β:
                                                                                        jmp   n94_disjunction_af
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:
                        mov              rdi, qword ptr [rbp + 4448]
                        mov              rsi, qword ptr [rbp + 4456]
                        mov              rdx, qword ptr [rbp + 4464]
                        mov              rcx, qword ptr [rbp + 4472]
                        mov              r8, qword ptr [rbp + 4496]
                        mov              r9, qword ptr [rbp + 4504]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n94_disjunction_af
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   n94_disjunction_as
n100_subscript_β:
                                                                                        jmp   n94_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n104_assign_var_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "Y"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 3856], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n105_var_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "I. "
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 4464], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n106_var_α
.Lx435_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3888]
                        mov              rsi, qword ptr [rbp + 3896]
                        mov              rdx, qword ptr [rbp + 3952]
                        mov              rcx, qword ptr [rbp + 3960]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n102_lit_string_α
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n95_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n107_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n109_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3832], rax
                        .section         .rodata
.Lrkfn442:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn442]
                        lea              rsi, [rbp + 3808]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n108_lit_integer_α
                                                                                        jmp   n108_lit_integer_α
n107_call_builtin_icon_β:
                                                                                        jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 3232], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n110_lit_integer_α
.Lx443_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:
                        mov              eax, dword ptr [rbp + 6336]
                        cmp              eax, 6
                                                                                        jne   .Lx444_0
                        mov              rax, 3
                        mov              rcx, qword ptr [rbp + 6344]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 4496], 6
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n100_subscript_α
.Lx444_0:
                        mov              rdi, qword ptr [rbp + 4464]
                        mov              rsi, qword ptr [rbp + 4472]
                        mov              rdx, qword ptr [rbp + 6336]
                        mov              rcx, qword ptr [rbp + 6344]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n94_disjunction_af
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n100_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n111_to_α
.Lx445_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n111_to_α:
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
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3216], rax
.Lx447_0:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rcx, qword ptr [rbp + 3256]
                        cmp              rax, rcx
                                                                                        jg    n113_lit_integer_α
                        mov              qword ptr [rbp + 3200], 6
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n112_assign_α
n111_to_β:
                        inc              qword ptr [rbp + 3216]
                                                                                        jmp   .Lx447_0
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n114_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 2496], 6
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n115_lit_integer_α
.Lx449_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n114_bound_α:
                        mov              qword ptr [rbp + 3264], rsp
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 2512], 6
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n117_to_α
.Lx452_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 3776], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n118_assign_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n117_to_α:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2496], 6
                        mov              qword ptr [rbp + 2504], rax
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2512], 6
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2480], rax
.Lx455_0:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2520]
                        cmp              rax, rcx
                                                                                        jg    n120_lit_integer_α
                        mov              qword ptr [rbp + 2464], 6
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n119_assign_α
n117_to_β:
                        inc              qword ptr [rbp + 2480]
                                                                                        jmp   .Lx455_0
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              rdx, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n122_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n123_lit_integer_α
.Lx458_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n121_disjunction_α:
                        mov              qword ptr [rbp + 3328], 0
                        mov              qword ptr [rbp + 3336], 0
                        mov              dword ptr [rbp + 3344], 0
                                                                                        jmp   n126_var_ref_α
n121_disjunction_as:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        jne   .Lx460_0
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n124_conjunction_α
.Lx460_0:
                        cmp              eax, 1
                                                                                        jne   .Lx460_1
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n124_conjunction_α
.Lx460_1:
                                                                                        jmp   n124_conjunction_α
n121_disjunction_β:
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 0
                                                                                        je    n125_unmark_α
                                                                                        jmp   n125_unmark_α
n121_disjunction_af:
                        add              dword ptr [rbp + 3344], 1
                        mov              eax, dword ptr [rbp + 3344]
                        cmp              eax, 1
                                                                                        je    n127_lit_string_α
                                                                                        jmp   n125_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n122_bound_α:
                        mov              qword ptr [rbp + 2528], rsp
                                                                                        jmp   n130_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n131_to_α
.Lx463_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n124_conjunction_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n125_unmark_α
n124_conjunction_β:
                                                                                        jmp   n125_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n125_unmark_α:
                        mov              rsp, qword ptr [rbp + 3264]
                                                                                        jmp   n111_to_β
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n132_var_α
n126_var_ref_β:
                                                                                        jmp   n121_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n133_var_α
n127_lit_string_β:
                                                                                        jmp   n125_unmark_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "J "
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3432], rax
                        .section         .rodata
.Lrkfn471:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn471]
                        lea              rsi, [rbp + 3376]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    n125_unmark_α
                                                                                        jmp   n121_disjunction_as
n128_call_builtin_icon_β:
                                                                                        jmp   n125_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3688], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3704], rax
                        .section         .rodata
.Lrkfn473:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rbp + 3664]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              eax, 99
                                                                                        je    n125_unmark_α
                                                                                        jmp   n121_disjunction_as
n129_call_builtin_icon_β:
                                                                                        jmp   n125_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 2608], 6
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n134_lit_integer_α
.Lx474_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n131_to_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1536], 6
                        mov              qword ptr [rbp + 1544], rax
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1552], 6
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1520], rax
.Lx476_0:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1560]
                        cmp              rax, rcx
                                                                                        jg    n136_lit_string_α
                        mov              qword ptr [rbp + 1504], 6
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n135_assign_α
n131_to_β:
                        inc              qword ptr [rbp + 1520]
                                                                                        jmp   .Lx476_0
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n137_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 2624], 6
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n139_to_α
.Lx481_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n140_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n141_assign_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n137_subscript_α:
                        mov              rdi, qword ptr [rbp + 3520]
                        mov              rsi, qword ptr [rbp + 3528]
                        mov              rdx, qword ptr [rbp + 3536]
                        mov              rcx, qword ptr [rbp + 3544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n121_disjunction_af
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n129_call_builtin_icon_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          ". --"
#-----------------------------------------------------------------------------------------------------------------------
n139_to_α:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2608], 6
                        mov              qword ptr [rbp + 2616], rax
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2624], 6
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2592], rax
.Lx487_0:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rcx, qword ptr [rbp + 2632]
                        cmp              rax, rcx
                                                                                        jg    n144_unmark_α
                        mov              qword ptr [rbp + 2576], 6
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n143_assign_α
n139_to_β:
                        inc              qword ptr [rbp + 2592]
                                                                                        jmp   .Lx487_0
#-----------------------------------------------------------------------------------------------------------------------
n140_bound_α:
                        mov              qword ptr [rbp + 1568], rsp
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                                                                                        jmp   n148_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n144_unmark_α:
                        mov              rsp, qword ptr [rbp + 2528]
                                                                                        jmp   n117_to_β
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n149_lit_integer_α
.Lx496_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n150_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n151_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n148_bound_α:
                        mov              qword ptr [rbp + 2640], rsp
                                                                                        jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n153_to_α
.Lx503_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n150_iterate_α:
                        mov              qword ptr [rbp + 1264], 0
.Lx505_0:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1264]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              rax, 99
                                                                                        je    n155_var_ref_α
                                                                                        jmp   n154_lit_string_α
n150_iterate_β:
                        inc              qword ptr [rbp + 1264]
                                                                                        jmp   .Lx505_0
#-----------------------------------------------------------------------------------------------------------------------
n151_subscript_α:
                        mov              rdi, qword ptr [rbp + 3584]
                        mov              rsi, qword ptr [rbp + 3592]
                        mov              rdx, qword ptr [rbp + 3600]
                        mov              rcx, qword ptr [rbp + 3608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n121_disjunction_af
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n156_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n157_assign_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n153_to_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1648], 6
                        mov              qword ptr [rbp + 1656], rax
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1664], 6
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1632], rax
.Lx509_0:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1672]
                        cmp              rax, rcx
                                                                                        jg    n159_unmark_α
                        mov              qword ptr [rbp + 1616], 6
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n158_assign_α
n153_to_β:
                        inc              qword ptr [rbp + 1632]
                                                                                        jmp   .Lx509_0
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n160_rev_assign_var_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n156_deref_α:
                        mov              rdi, qword ptr [rbp + 3616]
                        mov              rsi, qword ptr [rbp + 3624]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n121_disjunction_af
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n162_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                                                                                        jmp   n164_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n159_unmark_α:
                        mov              rsp, qword ptr [rbp + 1568]
                                                                                        jmp   n131_to_β
#-----------------------------------------------------------------------------------------------------------------------
n160_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n150_iterate_β
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n165_bound_α
n160_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_assign_var@PLT
                                                                                        jmp   n150_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n166_lit_integer_α
.Lx519_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3552]
                        mov              rsi, qword ptr [rbp + 3560]
                        mov              rdx, qword ptr [rbp + 3632]
                        mov              rcx, qword ptr [rbp + 3640]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n121_disjunction_af
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n168_var_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "K "
#-----------------------------------------------------------------------------------------------------------------------
n164_bound_α:
                        mov              qword ptr [rbp + 1680], rsp
                                                                                        jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_bound_α:
                        mov              qword ptr [rbp + 1344], rsp
                                                                                        jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n171_to_α
.Lx526_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n172_var_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "J "
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n173_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n175_lit_integer_α
.Lx530_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n176_var_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "M "
#-----------------------------------------------------------------------------------------------------------------------
n171_to_α:
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
.Lx533_0:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1032]
                        cmp              rax, rcx
                                                                                        jg    n178_var_ref_α
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n177_subscript_α
n171_to_β:
                        inc              qword ptr [rbp + 992]
                                                                                        jmp   .Lx533_0
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n180_var_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n174_disjunction_α:
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              dword ptr [rbp + 2720], 0
                                                                                        jmp   n183_var_ref_α
n174_disjunction_as:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        jne   .Lx538_0
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n181_conjunction_α
.Lx538_0:
                        cmp              eax, 1
                                                                                        jne   .Lx538_1
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n181_conjunction_α
.Lx538_1:
                                                                                        jmp   n181_conjunction_α
n174_disjunction_β:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        je    n182_unmark_α
                                                                                        jmp   n182_unmark_α
n174_disjunction_af:
                        add              dword ptr [rbp + 2720], 1
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 1
                                                                                        je    n184_var_α
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n187_to_α
.Lx539_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n188_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n177_subscript_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n171_to_β
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n192_var_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_conjunction_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n182_unmark_α
n181_conjunction_β:
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n182_unmark_α:
                        mov              rsp, qword ptr [rbp + 2640]
                                                                                        jmp   n139_to_β
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n194_var_α
n183_var_ref_β:
                                                                                        jmp   n174_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n195_lit_string_α
n184_var_β:
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn556:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    n182_unmark_α
                                                                                        jmp   n174_disjunction_as
n185_call_builtin_icon_β:
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn558:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n182_unmark_α
                                                                                        jmp   n174_disjunction_as
n186_call_builtin_icon_β:
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n187_to_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1760], 6
                        mov              qword ptr [rbp + 1768], rax
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1776], 6
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1744], rax
.Lx560_0:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1784]
                        cmp              rax, rcx
                                                                                        jg    n197_unmark_α
                        mov              qword ptr [rbp + 1728], 6
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n196_assign_α
n187_to_β:
                        inc              qword ptr [rbp + 1744]
                                                                                        jmp   .Lx560_0
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn562:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn562]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n189_unmark_α
                                                                                        jmp   n189_unmark_α
n188_call_builtin_icon_β:
                                                                                        jmp   n189_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n189_unmark_α:
                        mov              rsp, qword ptr [rbp + 1344]
                                                                                        jmp   n160_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n198_rev_assign_var_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n199_lit_integer_α
.Lx566_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n200_call_builtin_icon_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n186_call_builtin_icon_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          " [failed]"
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   n202_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n197_unmark_α:
                        mov              rsp, qword ptr [rbp + 1680]
                                                                                        jmp   n153_to_β
#-----------------------------------------------------------------------------------------------------------------------
n198_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n171_to_β
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n203_bound_α
n198_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_assign_var@PLT
                                                                                        jmp   n171_to_β
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n204_to_α
.Lx577_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3080], rax
                        .section         .rodata
.Lrkfn579:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n174_disjunction_α
                                                                                        jmp   n174_disjunction_α
n200_call_builtin_icon_β:
                                                                                        jmp   n174_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n205_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n202_bound_α:
                        mov              qword ptr [rbp + 1792], rsp
                                                                                        jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_bound_α:
                        mov              qword ptr [rbp + 1104], rsp
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_to_α:
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
.Lx587_0:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jg    n209_lit_string_α
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n208_lit_integer_α
n204_to_β:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx587_0
#-----------------------------------------------------------------------------------------------------------------------
n205_subscript_α:
                        mov              rdi, qword ptr [rbp + 2816]
                        mov              rsi, qword ptr [rbp + 2824]
                        mov              rdx, qword ptr [rbp + 2832]
                        mov              rcx, qword ptr [rbp + 2840]
                        mov              r8, qword ptr [rbp + 2848]
                        mov              r9, qword ptr [rbp + 2856]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n174_disjunction_af
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n211_assign_α
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n212_var_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "N "
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n213_binop_α
.Lx591_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n214_assign_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n215_assign_var_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "(*)"
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n217_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx597_0
                        mov              rax, qword ptr [rbp + 680]
                        mov              rcx, 0
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n219_subscript_α
.Lx597_0:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n204_to_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n219_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n220_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        mov              rdx, qword ptr [rbp + 2880]
                        mov              rcx, qword ptr [rbp + 2888]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n174_disjunction_af
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n222_var_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "L "
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn602:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn602]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n218_unmark_α
                                                                                        jmp   n218_unmark_α
n217_call_builtin_icon_β:
                                                                                        jmp   n218_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n218_unmark_α:
                        mov              rsp, qword ptr [rbp + 1104]
                                                                                        jmp   n198_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n219_subscript_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        mov              r8, qword ptr [rbp + 752]
                        mov              r9, qword ptr [rbp + 760]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n209_lit_string_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n185_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n227_rev_assign_var_α
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n228_lit_integer_α
.Lx613_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n229_var_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n226_disjunction_α:
                        mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              dword ptr [rbp + 1872], 0
                                                                                        jmp   n232_var_ref_α
n226_disjunction_as:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        jne   .Lx616_0
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n230_conjunction_α
.Lx616_0:
                        cmp              eax, 1
                                                                                        jne   .Lx616_1
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n230_conjunction_α
.Lx616_1:
                                                                                        jmp   n230_conjunction_α
n226_disjunction_β:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        je    n231_unmark_α
                                                                                        jmp   n231_unmark_α
n226_disjunction_af:
                        add              dword ptr [rbp + 1872], 1
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 1
                                                                                        je    n233_var_α
                                                                                        jmp   n231_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n227_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n204_to_β
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n236_bound_α
n227_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        call             rt_assign_var@PLT
                                                                                        jmp   n204_to_β
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n237_subscript_α
.Lx618_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_conjunction_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n231_unmark_α
n230_conjunction_β:
                                                                                        jmp   n231_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n231_unmark_α:
                        mov              rsp, qword ptr [rbp + 1792]
                                                                                        jmp   n187_to_β
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n239_var_α
n232_var_ref_β:
                                                                                        jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n240_lit_string_α
n233_var_β:
                                                                                        jmp   n231_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn629:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn629]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n231_unmark_α
                                                                                        jmp   n226_disjunction_as
n234_call_builtin_icon_β:
                                                                                        jmp   n231_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn631:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n231_unmark_α
                                                                                        jmp   n226_disjunction_as
n235_call_builtin_icon_β:
                                                                                        jmp   n231_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n236_bound_α:
                        mov              qword ptr [rbp + 816], rsp
                                                                                        jmp   n241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8, qword ptr [rbp + 400]
                        mov              r9, qword ptr [rbp + 408]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n243_lit_string_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n244_var_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n235_call_builtin_icon_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          " [failed]"
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n246_var_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "O "
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n247_iterate_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n248_assign_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "fghij"
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n250_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n247_iterate_α:
                        mov              qword ptr [rbp + 448], 0
.Lx649_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 448]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              rax, 99
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n253_assign_var_α
n247_iterate_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx649_0
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n255_call_builtin_icon_α
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n250_subscript_α:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        mov              r8, qword ptr [rbp + 2016]
                        mov              r9, qword ptr [rbp + 2024]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n226_disjunction_af
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n256_var_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn654:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn654]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n252_unmark_α
                                                                                        jmp   n252_unmark_α
n251_call_builtin_icon_β:
                                                                                        jmp   n252_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n252_unmark_α:
                        mov              rsp, qword ptr [rbp + 816]
                                                                                        jmp   n227_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_var_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n243_lit_string_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n257_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n258_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2312], rax
                        .section         .rodata
.Lrkfn661:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn661]
                        lea              rsi, [rbp + 2208]
                        mov              edx, 7
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n226_disjunction_α
                                                                                        jmp   n226_disjunction_α
n255_call_builtin_icon_β:
                                                                                        jmp   n226_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n259_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n257_bound_α:
                        mov              qword ptr [rbp + 480], rsp
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:
                        mov              qword ptr [rbp + 32], 6
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n261_lit_integer_α
.Lx666_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n262_subscript_α
.Lx667_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n263_var_α
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "P "
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n264_subscript_α
.Lx669_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n262_subscript_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        mov              r8, qword ptr [rbp + 2048]
                        mov              r9, qword ptr [rbp + 2056]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n226_disjunction_af
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n264_subscript_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8, qword ptr [rbp + 48]
                        mov              r9, qword ptr [rbp + 56]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n269_assign_var_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "(*)"
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn676:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn676]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n267_unmark_α
                                                                                        jmp   n267_unmark_α
n266_call_builtin_icon_β:
                                                                                        jmp   n267_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n267_unmark_α:
                        mov              rsp, qword ptr [rbp + 480]
                                                                                        jmp   n247_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n270_iterate_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "456"
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n226_disjunction_af
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_iterate_α:
                        mov              qword ptr [rbp + 96], 0
.Lx682_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n272_assign_var_α
n270_iterate_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx682_0
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n234_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_var_α:
                        mov              rdi, qword ptr [rbp + 0]
                        mov              rsi, qword ptr [rbp + 8]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 88]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n273_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n273_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n275_var_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "Q "
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n276_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn692:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn692]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n277_lit_string_α
                                                                                        jmp   n277_lit_string_α
n276_call_builtin_icon_β:
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n278_assign_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "klmno"
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n279_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n279_conjunction_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n280_unmark_α
n279_conjunction_β:
                                                                                        jmp   n280_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n280_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n270_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 6400]
                        add              rsp, 6408
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 6400]
                        add              rsp, 6408
                        ret
                        .section         .note.GNU-stack,"",@progbits
