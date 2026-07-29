                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "point(x,y)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "gcount"
.Lgvan1:                .string          "main__INITFLAG__0"
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
                        sub              rsp, 5896
                        mov              rdi, rsp
                        mov              ecx, 5896
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 5888], rbp
                        mov              rbp, rsp
main_α_body:
                        mov              qword ptr [rbp + 3648], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 5456], 0
                        mov              qword ptr [rbp + 5464], 0
                        mov              dword ptr [rbp + 5472], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 5472]
                        cmp              eax, 0
                                                                                        jne   .Lx256_0
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n1_lit_integer_α
.Lx256_0:
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 5472]
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_af:
                        add              dword ptr [rbp + 5472], 1
                        mov              eax, dword ptr [rbp + 5472]
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 5408], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n4_lit_integer_α
.Lx257_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                                                                                        jmp   n5_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   n0_disjunction_as
n3_assign_β:
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 5424], 6
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 5432], rax
                                                                                        jmp   n6_lit_integer_α
.Lx261_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n5_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 5520]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 5520]
                        mov              rsi, qword ptr [rbp + 5528]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 5440], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n8_make_list_α
.Lx263_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 5568], 6
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n9_assign_var_α
.Lx264_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_make_list_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5400], rax
                        lea              rdi, [rbp + 5360]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                                                                                        jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_var_α:
                        mov              rdi, qword ptr [rbp + 5536]
                        mov              rsi, qword ptr [rbp + 5544]
                        mov              rdx, qword ptr [rbp + 5568]
                        mov              rcx, qword ptr [rbp + 5576]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rbp + 5344]
                        mov              rdx, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
.Lx269_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n13_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n13_iterate_α:
                        mov              qword ptr [rbp + 5312], 0
.Lx273_0:
                        mov              rdi, qword ptr [rbp + 5328]
                        mov              rsi, qword ptr [rbp + 5336]
                        mov              rdx, qword ptr [rbp + 5312]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                        cmp              rax, 99
                                                                                        je    n14_lit_integer_α
                                                                                        jmp   n15_call_builtin_icon_α
n13_iterate_β:
                        inc              qword ptr [rbp + 5312]
                                                                                        jmp   .Lx273_0
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n16_lit_integer_α
.Lx274_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5272], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 5264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              eax, 99
                                                                                        je    n13_iterate_β
                                                                                        jmp   n13_iterate_β
n15_call_builtin_icon_β:
                                                                                        jmp   n13_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 5024], 6
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n17_to_α
.Lx277_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n17_to_α:
                        mov              rdi, qword ptr [rbp + 5008]
                        mov              rsi, qword ptr [rbp + 5016]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5008], 6
                        mov              qword ptr [rbp + 5016], rax
                        mov              rdi, qword ptr [rbp + 5024]
                        mov              rsi, qword ptr [rbp + 5032]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5024], 6
                        mov              qword ptr [rbp + 5032], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4992], rax
.Lx279_0:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              rcx, qword ptr [rbp + 5032]
                        cmp              rax, rcx
                                                                                        jg    n28_lit_integer_α
                        mov              qword ptr [rbp + 4976], 6
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n18_assign_α
n17_to_β:
                        inc              qword ptr [rbp + 4992]
                                                                                        jmp   .Lx279_0
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              rdx, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n19_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n19_bound_α:
                        mov              qword ptr [rbp + 5040], rsp
                                                                                        jmp   n20_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:
                        mov              qword ptr [rbp + 5168], 0
                        mov              qword ptr [rbp + 5176], 0
                        mov              dword ptr [rbp + 5184], 0
                                                                                        jmp   n22_var_α
n20_disjunction_as:
                        mov              eax, dword ptr [rbp + 5184]
                        cmp              eax, 0
                                                                                        jne   .Lx284_0
                                                                                        jmp   n21_var_α
.Lx284_0:
                                                                                        jmp   n21_var_α
n20_disjunction_β:
                        mov              eax, dword ptr [rbp + 5184]
                                                                                        jmp   n21_var_α
n20_disjunction_af:
                        add              dword ptr [rbp + 5184], 1
                        mov              eax, dword ptr [rbp + 5184]
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n25_lit_integer_α
n22_var_β:
                                                                                        jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5128], rax
                        .section         .rodata
.Lrkfn290:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 5120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 99
                                                                                        je    n24_unmark_α
                                                                                        jmp   n26_conjunction_α
n23_call_builtin_icon_β:
                                                                                        jmp   n24_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n24_unmark_α:
                        mov              rsp, qword ptr [rbp + 5040]
                                                                                        jmp   n17_to_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 6
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n27_binop_test_α
.Lx293_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n24_unmark_α
n26_conjunction_β:
                                                                                        jmp   n24_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_test_α:
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 100
                                                                                        je    .Lx295_0
                        mov              eax, dword ptr [rbp + 5232]
                        cmp              eax, 100
                                                                                        je    .Lx295_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 6
                                                                                        jne   .Lx295_2
                        mov              eax, dword ptr [rbp + 5232]
                        cmp              eax, 6
                                                                                        jne   .Lx295_2
.Lx295_1:
                        mov              rax, qword ptr [rbp + 5672]
                        mov              rcx, qword ptr [rbp + 5240]
                        cmp              rax, rcx
                                                                                        jne   n20_disjunction_af
                        mov              rcx, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rcx
                        mov              rcx, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rcx
                                                                                        jmp   n28_lit_integer_α
.Lx295_0:
                        mov              rdi, qword ptr [rbp + 5664]
                        mov              rsi, qword ptr [rbp + 5672]
                        mov              rdx, qword ptr [rbp + 5232]
                        mov              rcx, qword ptr [rbp + 5240]
                        mov              r8d, 9
                        lea              r9, [rbp + 5200]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx295_1
                        cmp              eax, 1
                                                                                        je    n20_disjunction_af
                                                                                        jmp   n28_lit_integer_α
.Lx295_2:
                        mov              rdi, qword ptr [rbp + 5664]
                        mov              rsi, qword ptr [rbp + 5672]
                        mov              rdx, qword ptr [rbp + 5232]
                        mov              rcx, qword ptr [rbp + 5240]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n20_disjunction_af
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 4960], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n29_assign_α
.Lx296_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              rdx, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 4816], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n33_call_builtin_α
.Lx300_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_charset_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              dword ptr [rbp + 4564], -1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n34_assign_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4936], rax
                        .section         .rodata
.Lrkfn303:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rbp + 4912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 99
                                                                                        je    n36_lit_integer_α
                                                                                        jmp   n35_lit_string_α
n33_call_builtin_β:
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              rdx, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n38_call_builtin_icon_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n39_call_builtin_α
.Lx306_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n40_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4856], rax
                        .section         .rodata
.Lrkfn310:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]
                        lea              rsi, [rbp + 4848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              eax, 99
                                                                                        je    n32_lit_charset_α
                                                                                        jmp   n42_assign_α
n38_call_builtin_icon_β:
                                                                                        jmp   n32_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4776], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4792], rax
                        .section         .rodata
.Lrkfn312:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rbp + 4768]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              eax, 99
                                                                                        je    n44_lit_string_α
                                                                                        jmp   n43_lit_string_α
n39_call_builtin_β:
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_unop_α:
                        mov              rdi, qword ptr [rbp + 5824]
                        mov              rsi, qword ptr [rbp + 5832]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                                                                                        jmp   n45_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_charset_α:
                        mov              qword ptr [rbp + 4448], 1
                        mov              dword ptr [rbp + 4452], -1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n46_assign_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              rdx, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 4736], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n48_call_builtin_icon_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "other"
#-----------------------------------------------------------------------------------------------------------------------
n45_unop_α:
                        mov              rdi, qword ptr [rbp + 4528]
                        mov              rsi, qword ptr [rbp + 4536]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                                                                                        jmp   n50_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                                                                                        jmp   n51_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n32_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn323:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]
                        lea              rsi, [rbp + 4704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n32_lit_charset_α
                                                                                        jmp   n52_assign_α
n48_call_builtin_icon_β:
                                                                                        jmp   n32_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                        .section         .rodata
.Lrkfn325:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rbp + 4624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 99
                                                                                        je    n32_lit_charset_α
                                                                                        jmp   n53_assign_α
n49_call_builtin_icon_β:
                                                                                        jmp   n32_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4488], rax
                        .section         .rodata
.Lrkfn327:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]
                        lea              rsi, [rbp + 4480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    n41_lit_charset_α
                                                                                        jmp   n41_lit_charset_α
n50_call_builtin_icon_β:
                                                                                        jmp   n41_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_charset_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              dword ptr [rbp + 4436], -1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n54_assign_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              rdx, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   n58_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        mov              rdi, qword ptr [rbp + 4400]
                        mov              rsi, qword ptr [rbp + 4408]
                        mov              rdx, qword ptr [rbp + 4416]
                        mov              rcx, qword ptr [rbp + 4424]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n57_var_α
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   n61_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n62_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_unop_α:
                        mov              rdi, qword ptr [rbp + 4384]
                        mov              rsi, qword ptr [rbp + 4392]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                                                                                        jmp   n65_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:
                        mov              rdi, qword ptr [rbp + 4288]
                        mov              rsi, qword ptr [rbp + 4296]
                        mov              rdx, qword ptr [rbp + 4304]
                        mov              rcx, qword ptr [rbp + 4312]
                        call             rt_cinter@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n66_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n67_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 4064], 6
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n68_lit_integer_α
.Lx347_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn349:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]
                        lea              rsi, [rbp + 4336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 99
                                                                                        je    n57_var_α
                                                                                        jmp   n57_var_α
n65_call_builtin_icon_β:
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_unop_α:
                        mov              rdi, qword ptr [rbp + 4272]
                        mov              rsi, qword ptr [rbp + 4280]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n69_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:
                        mov              rdi, qword ptr [rbp + 4176]
                        mov              rsi, qword ptr [rbp + 4184]
                        mov              rdx, qword ptr [rbp + 4192]
                        mov              rcx, qword ptr [rbp + 4200]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n64_lit_integer_α
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                                                                                        jmp   n70_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 4080], 6
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n71_call_α
.Lx352_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4232], rax
                        .section         .rodata
.Lrkfn354:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 4224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    n60_var_α
                                                                                        jmp   n60_var_α
n69_call_builtin_icon_β:
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_unop_α:
                        mov              rdi, qword ptr [rbp + 4160]
                        mov              rsi, qword ptr [rbp + 4168]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n72_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4040], rax
                        .section         .rodata
.Lrkfn357:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 4016]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n74_var_α
                                                                                        jmp   n73_assign_α
n71_call_β:
                                                                                        jmp   n74_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn359:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rbp + 4112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 99
                                                                                        je    n64_lit_integer_α
                                                                                        jmp   n64_lit_integer_α
n72_call_builtin_icon_β:
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   n74_var_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n75_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n75_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx363_0]
                        mov              rsi, qword ptr [rbp + 3984]
                        mov              rdx, qword ptr [rbp + 3992]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n76_lit_string_α
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n77_call_builtin_icon_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 3904], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n78_assign_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        .section         .rodata
.Lrkfn366:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rbp + 3936]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n76_lit_string_α
n77_call_builtin_icon_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              rdx, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              rdx, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                                                                                        jmp   n81_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n81_disjunction_α:
                        mov              qword ptr [rbp + 3744], 0
                        mov              qword ptr [rbp + 3752], 0
                        mov              dword ptr [rbp + 3760], 0
                                                                                        jmp   n83_var_α
n81_disjunction_as:
                        mov              eax, dword ptr [rbp + 3760]
                        cmp              eax, 0
                                                                                        jne   .Lx372_0
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n82_lit_integer_α
.Lx372_0:
                                                                                        jmp   n82_lit_integer_α
n81_disjunction_β:
                        mov              eax, dword ptr [rbp + 3760]
                                                                                        jmp   n82_lit_integer_α
n81_disjunction_af:
                        add              dword ptr [rbp + 3760], 1
                        mov              eax, dword ptr [rbp + 3760]
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n85_lit_integer_α
.Lx373_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n86_var_α
n83_var_β:
                                                                                        jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        .section         .rodata
.Lrkfn377:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn377]
                        lea              rsi, [rbp + 3792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    n82_lit_integer_α
                                                                                        jmp   n81_disjunction_as
n84_call_builtin_icon_β:
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n87_lit_integer_α
.Lx378_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n88_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n89_to_α
.Lx381_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_test_α:
                        mov              rdi, qword ptr [rbp + 5744]
                        mov              rsi, qword ptr [rbp + 5752]
                        mov              rdx, qword ptr [rbp + 5760]
                        mov              rcx, qword ptr [rbp + 5768]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n81_disjunction_af
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_to_α:
                        mov              rdi, qword ptr [rbp + 3712]
                        mov              rsi, qword ptr [rbp + 3720]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3712], 6
                        mov              qword ptr [rbp + 3720], rax
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3728], 6
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3696], rax
.Lx384_0:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3736]
                        cmp              rax, rcx
                                                                                        jg    n93_lit_integer_α
                        mov              qword ptr [rbp + 3680], 6
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n91_limit_α
n89_to_β:
                        inc              qword ptr [rbp + 3696]
                                                                                        jmp   .Lx384_0
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n84_call_builtin_icon_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "same"
#-----------------------------------------------------------------------------------------------------------------------
n91_limit_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              rcx, qword ptr [rbp + 3672]
                        cmp              rax, rcx
                                                                                        jge   n93_lit_integer_α
                        inc              qword ptr [rbp + 3648]
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n92_call_builtin_icon_α
n91_limit_β:
                                                                                        jmp   n89_to_β
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn389:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn389]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n89_to_β
                                                                                        jmp   n89_to_β
n92_call_builtin_icon_β:
                                                                                        jmp   n89_to_β
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 3536], 6
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n94_lit_integer_α
.Lx390_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n95_lit_integer_α
.Lx391_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n96_make_list_α
.Lx392_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n96_make_list_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3488]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n97_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n99_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n99_unop_α:
                        mov              rdi, qword ptr [rbp + 5728]
                        mov              rsi, qword ptr [rbp + 5736]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n102_lit_integer_α
.Lx399_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lrkfn401:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn401]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n100_lit_integer_α
                                                                                        jmp   n100_lit_integer_α
n101_call_builtin_icon_β:
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 6
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n103_to_α
.Lx402_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n103_to_α:
                        mov              rdi, qword ptr [rbp + 3152]
                        mov              rsi, qword ptr [rbp + 3160]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3152], 6
                        mov              qword ptr [rbp + 3160], rax
                        mov              rdi, qword ptr [rbp + 3168]
                        mov              rsi, qword ptr [rbp + 3176]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3168], 6
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3136], rax
.Lx404_0:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rcx, qword ptr [rbp + 3176]
                        cmp              rax, rcx
                                                                                        jg    n105_lit_string_α
                        mov              qword ptr [rbp + 3120], 6
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n104_assign_α
n103_to_β:
                        inc              qword ptr [rbp + 3136]
                                                                                        jmp   .Lx404_0
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n106_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n107_assign_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n106_bound_α:
                        mov              qword ptr [rbp + 3184], rsp
                                                                                        jmp   n108_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                                                                                        jmp   n109_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n108_disjunction_α:
                        mov              qword ptr [rbp + 3312], 0
                        mov              qword ptr [rbp + 3320], 0
                        mov              dword ptr [rbp + 3328], 0
                                                                                        jmp   n111_var_α
n108_disjunction_as:
                        mov              eax, dword ptr [rbp + 3328]
                        cmp              eax, 0
                                                                                        jne   .Lx411_0
                                                                                        jmp   n110_var_α
.Lx411_0:
                                                                                        jmp   n110_var_α
n108_disjunction_β:
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n110_var_α
n108_disjunction_af:
                        add              dword ptr [rbp + 3328], 1
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_disjunction_α:
                        mov              qword ptr [rbp + 2976], 0
                        mov              qword ptr [rbp + 2984], 0
                        mov              dword ptr [rbp + 2992], 0
                                                                                        jmp   n113_var_α
n109_disjunction_as:
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              eax, 0
                                                                                        jne   .Lx413_0
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n112_lit_integer_α
.Lx413_0:
                                                                                        jmp   n112_lit_integer_α
n109_disjunction_β:
                        mov              eax, dword ptr [rbp + 2992]
                                                                                        jmp   n112_lit_integer_α
n109_disjunction_af:
                        add              dword ptr [rbp + 2992], 1
                        mov              eax, dword ptr [rbp + 2992]
                                                                                        jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n117_lit_integer_α
n111_var_β:
                                                                                        jmp   n108_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 6
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n118_call_builtin_icon_α
.Lx418_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n119_unop_test_α
n113_var_β:
                                                                                        jmp   n109_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn422:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rbp + 3024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n112_lit_integer_α
                                                                                        jmp   n109_disjunction_as
n114_call_builtin_icon_β:
                                                                                        jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn424:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n116_unmark_α
                                                                                        jmp   n120_conjunction_α
n115_call_builtin_icon_β:
                                                                                        jmp   n116_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n116_unmark_α:
                        mov              rsp, qword ptr [rbp + 3184]
                                                                                        jmp   n103_to_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n121_binop_test_α
.Lx427_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn429:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n122_lit_integer_α
                                                                                        jmp   n122_lit_integer_α
n118_call_builtin_icon_β:
                                                                                        jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_unop_test_α:
                        mov              eax, dword ptr [rbp + 5712]
                        cmp              eax, 99
                                                                                        je    n109_disjunction_af
                        cmp              eax, 0
                                                                                        je    n109_disjunction_af
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_conjunction_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n116_unmark_α
n120_conjunction_β:
                                                                                        jmp   n116_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n121_binop_test_α:
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 100
                                                                                        je    .Lx432_0
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 100
                                                                                        je    .Lx432_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 6
                                                                                        jne   .Lx432_2
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 6
                                                                                        jne   .Lx432_2
.Lx432_1:
                        mov              rax, qword ptr [rbp + 5672]
                        mov              rcx, qword ptr [rbp + 3384]
                        cmp              rax, rcx
                                                                                        jne   n108_disjunction_af
                        mov              rcx, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rcx
                        mov              rcx, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rcx
                                                                                        jmp   n116_unmark_α
.Lx432_0:
                        mov              rdi, qword ptr [rbp + 5664]
                        mov              rsi, qword ptr [rbp + 5672]
                        mov              rdx, qword ptr [rbp + 3376]
                        mov              rcx, qword ptr [rbp + 3384]
                        mov              r8d, 9
                        lea              r9, [rbp + 3344]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx432_1
                        cmp              eax, 1
                                                                                        je    n108_disjunction_af
                                                                                        jmp   n116_unmark_α
.Lx432_2:
                        mov              rdi, qword ptr [rbp + 5664]
                        mov              rsi, qword ptr [rbp + 5672]
                        mov              rdx, qword ptr [rbp + 3376]
                        mov              rcx, qword ptr [rbp + 3384]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n108_disjunction_af
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n116_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        mov              qword ptr [rbp + 2880], 6
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n124_lit_integer_α
.Lx433_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n114_call_builtin_icon_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "nonnull"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n125_binop_α
.Lx435_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              rdx, qword ptr [rbp + 2896]
                        mov              rcx, qword ptr [rbp + 2904]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n127_lit_integer_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n126_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn438:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rbp + 2832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n127_lit_integer_α
                                                                                        jmp   n127_lit_integer_α
n126_call_builtin_icon_β:
                                                                                        jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n128_lit_integer_α
.Lx439_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n129_lit_integer_α
.Lx440_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n130_lit_integer_α
.Lx441_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 2784], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n131_lit_integer_α
.Lx442_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n132_make_list_α
.Lx443_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n132_make_list_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              rdx, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                                                                                        jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5696]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n135_random_α
#-----------------------------------------------------------------------------------------------------------------------
n135_random_α:
                        mov              rdi, qword ptr [rbp + 2608]
                        mov              rsi, qword ptr [rbp + 2616]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n137_lit_integer_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n136_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_deref_α:
                        mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n137_lit_integer_α
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 2464], 6
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n139_lit_integer_α
.Lx451_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn453:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n137_lit_integer_α
                                                                                        jmp   n140_call_builtin_icon_α
n138_call_builtin_icon_β:
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n141_call_α
.Lx454_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        .section         .rodata
.Lrkfn456:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn456]
                        lea              rsi, [rbp + 2512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n137_lit_integer_α
                                                                                        jmp   n137_lit_integer_α
n140_call_builtin_icon_β:
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn458:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n143_var_α
                                                                                        jmp   n142_assign_α
n141_call_β:
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n144_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n144_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n145_lit_integer_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n146_var_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n147_assign_α
.Lx463_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n148_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx467_0]
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n145_lit_integer_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n150_op75_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op75_α:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 7
                                                                                        je    .Lx471_1
                        cmp              eax, 6
                                                                                        jne   .Lx471_0
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 6
                                                                                        jne   .Lx471_0
.Lx471_1:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n153_op75_α
.Lx471_0:
                        lea              rdi, [rbp + 2336]
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2320]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n153_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n154_op75_α
.Lx472_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n152_disjunction_α:
                        mov              qword ptr [rbp + 2080], 0
                        mov              qword ptr [rbp + 2088], 0
                        mov              dword ptr [rbp + 2096], 0
                                                                                        jmp   n156_var_α
n152_disjunction_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 0
                                                                                        jne   .Lx474_0
                                                                                        jmp   n155_conjunction_α
.Lx474_0:
                                                                                        jmp   n155_conjunction_α
n152_disjunction_β:
                        mov              eax, dword ptr [rbp + 2096]
                                                                                        jmp   n149_var_α
n152_disjunction_af:
                        add              dword ptr [rbp + 2096], 1
                        mov              eax, dword ptr [rbp + 2096]
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op75_α:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 7
                                                                                        je    .Lx476_1
                        cmp              eax, 6
                                                                                        jne   .Lx476_0
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 6
                                                                                        jne   .Lx476_0
.Lx476_1:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n157_binop_α
.Lx476_0:
                        lea              rdi, [rbp + 2368]
                        lea              rsi, [rbp + 2336]
                        lea              rdx, [rbp + 2304]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n157_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n154_op75_α:
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 7
                                                                                        je    .Lx478_1
                        cmp              eax, 6
                                                                                        jne   .Lx478_0
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 6
                                                                                        jne   .Lx478_0
.Lx478_1:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n158_binop_α
.Lx478_0:
                        lea              rdi, [rbp + 5664]
                        lea              rsi, [rbp + 2208]
                        lea              rdx, [rbp + 2176]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n158_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n155_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n149_var_α
n155_conjunction_β:
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n159_lit_integer_α
n156_var_β:
                                                                                        jmp   n152_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              eax, dword ptr [rbp + 2320]
                        cmp              eax, 6
                                                                                        jne   .Lx482_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 6
                                                                                        jne   .Lx482_0
                        mov              rax, qword ptr [rbp + 2328]
                        mov              rcx, qword ptr [rbp + 2312]
                        add              rax, rcx
                        mov              qword ptr [rbp + 2288], 6
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n160_call_builtin_icon_α
.Lx482_0:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n145_lit_integer_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 6
                                                                                        jne   .Lx483_0
                        mov              rax, qword ptr [rbp + 2184]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2160], 6
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n161_assign_α
.Lx483_0:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n152_disjunction_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n161_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n162_binop_test_α
.Lx484_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn486:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn486]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n145_lit_integer_α
                                                                                        jmp   n145_lit_integer_α
n160_call_builtin_icon_β:
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n152_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_test_α:
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 100
                                                                                        je    .Lx488_0
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              eax, 100
                                                                                        je    .Lx488_0
                        mov              eax, dword ptr [rbp + 5664]
                        cmp              eax, 6
                                                                                        jne   .Lx488_2
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              eax, 6
                                                                                        jne   .Lx488_2
.Lx488_1:
                        mov              rax, qword ptr [rbp + 5672]
                        mov              rcx, qword ptr [rbp + 2152]
                        cmp              rax, rcx
                                                                                        jl    n152_disjunction_af
                        mov              rcx, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rcx
                        mov              rcx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rcx
                                                                                        jmp   n163_var_α
.Lx488_0:
                        mov              rdi, qword ptr [rbp + 5664]
                        mov              rsi, qword ptr [rbp + 5672]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        mov              r8d, 8
                        lea              r9, [rbp + 2112]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx488_1
                        cmp              eax, 1
                                                                                        je    n152_disjunction_af
                                                                                        jmp   n163_var_α
.Lx488_2:
                        mov              rdi, qword ptr [rbp + 5664]
                        mov              rsi, qword ptr [rbp + 5672]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n152_disjunction_af
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n164_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn492:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n165_lit_string_α
                                                                                        jmp   n165_lit_string_α
n164_call_builtin_icon_β:
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n166_assign_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                                                                                        jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n168_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n170_lit_integer_α
.Lx497_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n173_subscript_α
.Lx500_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n174_lit_integer_α
.Lx501_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n175_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_subscript_α:
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        mov              r8, qword ptr [rbp + 1968]
                        mov              r9, qword ptr [rbp + 1976]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n169_var_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n177_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n178_binop_α
.Lx505_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n179_lit_integer_α
.Lx506_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n180_call_builtin_icon_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "side"
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn509:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n169_var_α
                                                                                        jmp   n169_var_α
n177_call_builtin_icon_β:
                                                                                        jmp   n169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n172_var_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n181_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n182_binop_α
.Lx511_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn513:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn513]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n183_lit_integer_α
                                                                                        jmp   n183_lit_integer_α
n180_call_builtin_icon_β:
                                                                                        jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_subscript_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        mov              r8, qword ptr [rbp + 1856]
                        mov              r9, qword ptr [rbp + 1864]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n172_var_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n184_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n182_binop_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n176_lit_string_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n185_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n186_conjunction_α
.Lx516_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn518:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n172_var_α
                                                                                        jmp   n172_var_α
n184_call_builtin_icon_β:
                                                                                        jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_subscript_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8, qword ptr [rbp + 1728]
                        mov              r9, qword ptr [rbp + 1736]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n176_lit_string_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n187_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n186_conjunction_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n188_assign_α
n186_conjunction_β:
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn522:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n176_lit_string_α
                                                                                        jmp   n176_lit_string_α
n187_call_builtin_icon_β:
                                                                                        jmp   n176_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n190_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn527:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn527]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n191_disjunction_α
                                                                                        jmp   n191_disjunction_α
n190_call_builtin_icon_β:
                                                                                        jmp   n191_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n191_disjunction_α:
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                        mov              dword ptr [rbp + 1328], 0
                                                                                        jmp   n193_lit_string_α
n191_disjunction_as:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        jne   .Lx529_0
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n192_disjunction_α
.Lx529_0:
                                                                                        jmp   n192_disjunction_α
n191_disjunction_β:
                        mov              eax, dword ptr [rbp + 1328]
                                                                                        jmp   n192_disjunction_α
n191_disjunction_af:
                        add              dword ptr [rbp + 1328], 1
                        mov              eax, dword ptr [rbp + 1328]
                                                                                        jmp   n192_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n192_disjunction_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0
                                                                                        jmp   n196_lit_string_α
n192_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx531_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n195_disjunction_α
.Lx531_0:
                                                                                        jmp   n195_disjunction_α
n192_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                                                                                        jmp   n195_disjunction_α
n192_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                                                                                        jmp   n195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n198_lit_string_α
n193_lit_string_β:
                                                                                        jmp   n191_disjunction_af
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn534:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn534]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n192_disjunction_α
                                                                                        jmp   n191_disjunction_as
n194_call_builtin_icon_β:
                                                                                        jmp   n192_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n195_disjunction_α:
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0
                                                                                        jmp   n200_lit_string_α
n195_disjunction_as:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0
                                                                                        jne   .Lx536_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n199_disjunction_α
.Lx536_0:
                                                                                        jmp   n199_disjunction_α
n195_disjunction_β:
                        mov              eax, dword ptr [rbp + 1040]
                                                                                        jmp   n199_disjunction_α
n195_disjunction_af:
                        add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                                                                                        jmp   n199_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n202_lit_string_α
n196_lit_string_β:
                                                                                        jmp   n192_disjunction_af
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "abd"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn539:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n195_disjunction_α
                                                                                        jmp   n192_disjunction_as
n197_call_builtin_icon_β:
                                                                                        jmp   n195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n203_binop_test_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "abd"
#-----------------------------------------------------------------------------------------------------------------------
n199_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n205_lit_string_α
n199_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx542_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n204_disjunction_α
.Lx542_0:
                                                                                        jmp   n204_disjunction_α
n199_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   n204_disjunction_α
n199_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                                                                                        jmp   n204_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n207_lit_string_α
n200_lit_string_β:
                                                                                        jmp   n195_disjunction_af
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn545:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn545]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n199_disjunction_α
                                                                                        jmp   n195_disjunction_as
n201_call_builtin_icon_β:
                                                                                        jmp   n199_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n208_binop_test_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n191_disjunction_af
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_disjunction_α:
                        mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0
                                                                                        jmp   n211_lit_string_α
n204_disjunction_as:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        jne   .Lx549_0
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n210_disjunction_α
.Lx549_0:
                                                                                        jmp   n210_disjunction_α
n204_disjunction_β:
                        mov              eax, dword ptr [rbp + 752]
                                                                                        jmp   n210_disjunction_α
n204_disjunction_af:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                                                                                        jmp   n210_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n213_lit_string_α
n205_lit_string_β:
                                                                                        jmp   n199_disjunction_af
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn552:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn552]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n204_disjunction_α
                                                                                        jmp   n199_disjunction_as
n206_call_builtin_icon_β:
                                                                                        jmp   n204_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n214_binop_test_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n208_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n192_disjunction_af
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n194_call_builtin_icon_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "slt"
#-----------------------------------------------------------------------------------------------------------------------
n210_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n217_lit_string_α
n210_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx557_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n216_lit_string_α
.Lx557_0:
                                                                                        jmp   n216_lit_string_α
n210_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                                                                                        jmp   n216_lit_string_α
n210_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                                                                                        jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n219_lit_string_α
n211_lit_string_β:
                                                                                        jmp   n204_disjunction_af
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn560:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n210_disjunction_α
                                                                                        jmp   n204_disjunction_as
n212_call_builtin_icon_β:
                                                                                        jmp   n210_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n220_binop_test_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n214_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n195_disjunction_af
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n197_call_builtin_icon_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "sgt"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n222_unop_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n223_lit_string_α
n217_lit_string_β:
                                                                                        jmp   n210_disjunction_af
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn567:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn567]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n216_lit_string_α
                                                                                        jmp   n210_disjunction_as
n218_call_builtin_icon_β:
                                                                                        jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n224_binop_test_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_test_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              r8d, 15
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n199_disjunction_af
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n201_call_builtin_icon_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "sle"
#-----------------------------------------------------------------------------------------------------------------------
n222_unop_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n226_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n228_binop_test_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_test_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n204_disjunction_af
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n206_call_builtin_icon_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "sge"
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn576:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n227_lit_integer_α
                                                                                        jmp   n227_lit_integer_α
n226_call_builtin_icon_β:
                                                                                        jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n230_lit_integer_α
.Lx577_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_test_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n210_disjunction_af
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n231_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n212_call_builtin_icon_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "seq"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n232_lit_integer_α
.Lx580_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n218_call_builtin_icon_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "sne"
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n233_make_list_α
.Lx582_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n233_make_list_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                                                                                        jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5616]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n236_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n237_subscript_α
.Lx588_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n239_lit_integer_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n238_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n238_deref_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n239_lit_integer_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n240_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n241_assign_α
.Lx591_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn593:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n239_lit_integer_α
                                                                                        jmp   n239_lit_integer_α
n240_call_builtin_icon_β:
                                                                                        jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n243_assign_α
.Lx595_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                                                                                        jmp   n244_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n244_swap_α:
                        mov              rax, qword ptr [rbp + 5584]
                        mov              rdx, qword ptr [rbp + 5592]
                        mov              rcx, qword ptr [rbp + 5600]
                        mov              rsi, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5584], rcx
                        mov              qword ptr [rbp + 5592], rsi
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        mov              qword ptr [rbp + 208], rcx
                        mov              qword ptr [rbp + 216], rsi
                                                                                        jmp   n245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn601:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn601]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n247_var_α
                                                                                        jmp   n247_var_α
n246_call_builtin_icon_β:
                                                                                        jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n248_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n250_op75_α
.Lx603_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n250_op75_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx606_1
                        cmp              eax, 6
                                                                                        jne   .Lx606_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx606_0
.Lx606_1:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n252_binop_α
.Lx606_0:
                        lea              rdi, [rbp + 112]
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 96]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n252_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn608:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n251_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx609_0
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n253_assign_α
.Lx609_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n249_var_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n253_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n249_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 5888]
                        add              rsp, 5896
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 5888]
                        add              rsp, 5896
                        ret
                        .section         .note.GNU-stack,"",@progbits
