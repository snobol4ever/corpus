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
                        sub              rsp, 6232
                        mov              rdi, rsp
                        mov              ecx, 6232
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 6224], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 6176], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 6184], rax
                                                                                        jmp   n1_assign_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 6176]
                        mov              rdx, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n3_var_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "type "
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6168], rax
                                                                                        jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 6136], rax
                        .section         .rodata
.Lrkfn254:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rbp + 6128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n6_call_builtin_icon_α
n4_call_builtin_icon_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 5984], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n7_var_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "*s  "
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6072], rax
                        .section         .rodata
.Lrkfn257:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rbp + 6048]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n5_lit_string_α
n6_call_builtin_icon_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n8_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_unop_α:
                        mov              rdi, qword ptr [rbp + 6192]
                        mov              rsi, qword ptr [rbp + 6200]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 5888], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n11_var_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "s:  "
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5944], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5960], rax
                        .section         .rodata
.Lrkfn263:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rbp + 5936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n9_lit_string_α
n10_call_builtin_icon_β:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 5904], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5864], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 5840]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              eax, 99
                                                                                        je    n13_lit_string_α
                                                                                        jmp   n13_lit_string_α
n12_call_builtin_icon_β:
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 5744], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n14_var_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "s:  "
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 5816], rax
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5784], rax
                        .section         .rodata
.Lrkfn272:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rbp + 5776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                        cmp              eax, 99
                                                                                        je    n16_disjunction_α
                                                                                        jmp   n17_call_builtin_icon_α
n15_call_builtin_icon_β:
                                                                                        jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 5568], 0
                        mov              qword ptr [rbp + 5576], 0
                        mov              dword ptr [rbp + 5584], 0
                                                                                        jmp   n19_lit_string_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 5584]
                        cmp              eax, 0
                                                                                        jne   .Lx274_0
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx274_0:
                        cmp              eax, 1
                                                                                        jne   .Lx274_1
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx274_1:
                        cmp              eax, 2
                                                                                        jne   .Lx274_2
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx274_2:
                                                                                        jmp   n18_call_builtin_icon_α
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 5584]
                        cmp              eax, 0
                                                                                        je    n16_disjunction_af
                        cmp              eax, 1
                                                                                        je    n21_iterate_β
                                                                                        jmp   n16_disjunction_af
n16_disjunction_af:
                        add              dword ptr [rbp + 5584], 1
                        mov              eax, dword ptr [rbp + 5584]
                        cmp              eax, 1
                                                                                        je    n20_var_α
                        cmp              eax, 2
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5720], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 5696]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        cmp              eax, 99
                                                                                        je    n16_disjunction_α
                                                                                        jmp   n16_disjunction_α
n17_call_builtin_icon_β:
                                                                                        jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5544], rax
                        .section         .rodata
.Lrkfn278:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 5536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                        cmp              eax, 99
                                                                                        je    n16_disjunction_β
                                                                                        jmp   n16_disjunction_β
n18_call_builtin_icon_β:
                                                                                        jmp   n16_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 5600], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 5608], rax
                                                                                        jmp   n16_disjunction_as
n19_lit_string_β:
                                                                                        jmp   n16_disjunction_af
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "!:  "
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n21_iterate_α
n20_var_β:
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_iterate_α:
                        mov              qword ptr [rbp + 5632], 0
.Lx283_0:
                        mov              rdi, qword ptr [rbp + 5648]
                        mov              rsi, qword ptr [rbp + 5656]
                        mov              rdx, qword ptr [rbp + 5632]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                        cmp              rax, 99
                                                                                        je    n16_disjunction_af
                                                                                        jmp   n16_disjunction_as
n21_iterate_β:
                        inc              qword ptr [rbp + 5632]
                                                                                        jmp   .Lx283_0
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 5664], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n16_disjunction_as
n22_lit_string_β:
                                                                                        jmp   n16_disjunction_af
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                        mov              qword ptr [rbp + 5344], 0
                        mov              qword ptr [rbp + 5352], 0
                        mov              dword ptr [rbp + 5360], 0
                                                                                        jmp   n26_lit_string_α
n23_disjunction_as:
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 0
                                                                                        jne   .Lx286_0
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n24_call_builtin_icon_α
.Lx286_0:
                        cmp              eax, 1
                                                                                        jne   .Lx286_1
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n24_call_builtin_icon_α
.Lx286_1:
                        cmp              eax, 2
                                                                                        jne   .Lx286_2
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n24_call_builtin_icon_α
.Lx286_2:
                                                                                        jmp   n24_call_builtin_icon_α
n23_disjunction_β:
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 0
                                                                                        je    n23_disjunction_af
                        cmp              eax, 1
                                                                                        je    n28_to_β
                                                                                        jmp   n23_disjunction_af
n23_disjunction_af:
                        add              dword ptr [rbp + 5360], 1
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 1
                                                                                        je    n27_var_ref_α
                        cmp              eax, 2
                                                                                        je    n29_lit_string_α
                                                                                        jmp   n25_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5320], rax
                        .section         .rodata
.Lrkfn288:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 5312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                        cmp              eax, 99
                                                                                        je    n23_disjunction_β
                                                                                        jmp   n23_disjunction_β
n24_call_builtin_icon_β:
                                                                                        jmp   n23_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:
                        mov              qword ptr [rbp + 5120], 0
                        mov              qword ptr [rbp + 5128], 0
                        mov              dword ptr [rbp + 5136], 0
                                                                                        jmp   n33_lit_string_α
n25_disjunction_as:
                        mov              eax, dword ptr [rbp + 5136]
                        cmp              eax, 0
                                                                                        jne   .Lx290_0
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx290_0:
                        cmp              eax, 1
                                                                                        jne   .Lx290_1
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx290_1:
                        cmp              eax, 2
                                                                                        jne   .Lx290_2
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx290_2:
                                                                                        jmp   n31_call_builtin_icon_α
n25_disjunction_β:
                        mov              eax, dword ptr [rbp + 5136]
                        cmp              eax, 0
                                                                                        je    n25_disjunction_af
                        cmp              eax, 1
                                                                                        je    n35_to_β
                                                                                        jmp   n25_disjunction_af
n25_disjunction_af:
                        add              dword ptr [rbp + 5136], 1
                        mov              eax, dword ptr [rbp + 5136]
                        cmp              eax, 1
                                                                                        je    n34_var_ref_α
                        cmp              eax, 2
                                                                                        je    n36_lit_string_α
                                                                                        jmp   n32_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 5376], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 5384], rax
                                                                                        jmp   n23_disjunction_as
n26_lit_string_β:
                                                                                        jmp   n23_disjunction_af
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "1:  "
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6192]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx
                                                                                        jmp   n38_lit_integer_α
n27_var_ref_β:
                                                                                        jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n28_to_α:
                        mov              rdi, qword ptr [rbp + 5440]
                        mov              rsi, qword ptr [rbp + 5448]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5440], 6
                        mov              qword ptr [rbp + 5448], rax
                        mov              rdi, qword ptr [rbp + 5456]
                        mov              rsi, qword ptr [rbp + 5464]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5456], 6
                        mov              qword ptr [rbp + 5464], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5424], rax
.Lx295_0:
                        mov              rax, qword ptr [rbp + 5424]
                        mov              rcx, qword ptr [rbp + 5464]
                        cmp              rax, rcx
                                                                                        jg    n23_disjunction_af
                        mov              qword ptr [rbp + 5408], 6
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n39_subscript_α
n28_to_β:
                        inc              qword ptr [rbp + 5424]
                                                                                        jmp   .Lx295_0
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 5504], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n23_disjunction_as
n29_lit_string_β:
                                                                                        jmp   n23_disjunction_af
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:
                        mov              rdi, qword ptr [rbp + 5472]
                        mov              rsi, qword ptr [rbp + 5480]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n28_to_β
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                                                                                        jmp   n23_disjunction_as
n30_deref_β:
                                                                                        jmp   n28_to_β
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5096], rax
                        .section         .rodata
.Lrkfn299:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 5088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 99
                                                                                        je    n25_disjunction_β
                                                                                        jmp   n25_disjunction_β
n31_call_builtin_icon_β:
                                                                                        jmp   n25_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n32_disjunction_α:
                        mov              qword ptr [rbp + 4896], 0
                        mov              qword ptr [rbp + 4904], 0
                        mov              dword ptr [rbp + 4912], 0
                                                                                        jmp   n42_lit_string_α
n32_disjunction_as:
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 0
                                                                                        jne   .Lx301_0
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx301_0:
                        cmp              eax, 1
                                                                                        jne   .Lx301_1
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx301_1:
                        cmp              eax, 2
                                                                                        jne   .Lx301_2
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx301_2:
                                                                                        jmp   n40_call_builtin_icon_α
n32_disjunction_β:
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 0
                                                                                        je    n32_disjunction_af
                        cmp              eax, 1
                                                                                        je    n44_to_β
                                                                                        jmp   n32_disjunction_af
n32_disjunction_af:
                        add              dword ptr [rbp + 4912], 1
                        mov              eax, dword ptr [rbp + 4912]
                        cmp              eax, 1
                                                                                        je    n43_var_ref_α
                        cmp              eax, 2
                                                                                        je    n45_lit_string_α
                                                                                        jmp   n41_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 5152], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 5160], rax
                                                                                        jmp   n25_disjunction_as
n33_lit_string_β:
                                                                                        jmp   n25_disjunction_af
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "0:  "
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6192]
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                                                                                        jmp   n47_lit_integer_α
n34_var_ref_β:
                                                                                        jmp   n25_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n35_to_α:
                        mov              rdi, qword ptr [rbp + 5216]
                        mov              rsi, qword ptr [rbp + 5224]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5216], 6
                        mov              qword ptr [rbp + 5224], rax
                        mov              rdi, qword ptr [rbp + 5232]
                        mov              rsi, qword ptr [rbp + 5240]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5232], 6
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5200], rax
.Lx306_0:
                        mov              rax, qword ptr [rbp + 5200]
                        mov              rcx, qword ptr [rbp + 5240]
                        cmp              rax, rcx
                                                                                        jg    n25_disjunction_af
                        mov              qword ptr [rbp + 5184], 6
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n48_subscript_α
n35_to_β:
                        inc              qword ptr [rbp + 5200]
                                                                                        jmp   .Lx306_0
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 5280], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n25_disjunction_as
n36_lit_string_β:
                                                                                        jmp   n25_disjunction_af
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n37_deref_α:
                        mov              rdi, qword ptr [rbp + 5248]
                        mov              rsi, qword ptr [rbp + 5256]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n35_to_β
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                                                                                        jmp   n25_disjunction_as
n37_deref_β:
                                                                                        jmp   n35_to_β
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 5440], 6
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n49_lit_integer_α
.Lx309_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_subscript_α:
                        mov              rdi, qword ptr [rbp + 5392]
                        mov              rsi, qword ptr [rbp + 5400]
                        mov              rdx, qword ptr [rbp + 5408]
                        mov              rcx, qword ptr [rbp + 5416]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n28_to_β
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                                                                                        jmp   n30_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4872], rax
                        .section         .rodata
.Lrkfn312:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rbp + 4864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                        cmp              eax, 99
                                                                                        je    n32_disjunction_β
                                                                                        jmp   n32_disjunction_β
n40_call_builtin_icon_β:
                                                                                        jmp   n32_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n41_disjunction_α:
                        mov              qword ptr [rbp + 4672], 0
                        mov              qword ptr [rbp + 4680], 0
                        mov              dword ptr [rbp + 4688], 0
                                                                                        jmp   n52_lit_string_α
n41_disjunction_as:
                        mov              eax, dword ptr [rbp + 4688]
                        cmp              eax, 0
                                                                                        jne   .Lx314_0
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx314_0:
                        cmp              eax, 1
                                                                                        jne   .Lx314_1
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx314_1:
                        cmp              eax, 2
                                                                                        jne   .Lx314_2
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx314_2:
                                                                                        jmp   n50_call_builtin_icon_α
n41_disjunction_β:
                        mov              eax, dword ptr [rbp + 4688]
                        cmp              eax, 0
                                                                                        je    n41_disjunction_af
                        cmp              eax, 1
                                                                                        je    n54_to_β
                                                                                        jmp   n41_disjunction_af
n41_disjunction_af:
                        add              dword ptr [rbp + 4688], 1
                        mov              eax, dword ptr [rbp + 4688]
                        cmp              eax, 1
                                                                                        je    n53_var_ref_α
                        cmp              eax, 2
                                                                                        je    n55_lit_string_α
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 4928], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 4936], rax
                                                                                        jmp   n32_disjunction_as
n42_lit_string_β:
                                                                                        jmp   n32_disjunction_af
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "-5: "
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6192]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n57_lit_integer_α
n43_var_ref_β:
                                                                                        jmp   n32_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n44_to_α:
                        mov              rdi, qword ptr [rbp + 4992]
                        mov              rsi, qword ptr [rbp + 5000]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4992], 6
                        mov              qword ptr [rbp + 5000], rax
                        mov              rdi, qword ptr [rbp + 5008]
                        mov              rsi, qword ptr [rbp + 5016]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5008], 6
                        mov              qword ptr [rbp + 5016], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4976], rax
.Lx319_0:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              rcx, qword ptr [rbp + 5016]
                        cmp              rax, rcx
                                                                                        jg    n32_disjunction_af
                        mov              qword ptr [rbp + 4960], 6
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n58_subscript_α
n44_to_β:
                        inc              qword ptr [rbp + 4976]
                                                                                        jmp   .Lx319_0
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 5056], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n32_disjunction_as
n45_lit_string_β:
                                                                                        jmp   n32_disjunction_af
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:
                        mov              rdi, qword ptr [rbp + 5024]
                        mov              rsi, qword ptr [rbp + 5032]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n44_to_β
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n32_disjunction_as
n46_deref_β:
                                                                                        jmp   n44_to_β
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 5216], 6
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n59_lit_integer_α
.Lx322_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_subscript_α:
                        mov              rdi, qword ptr [rbp + 5168]
                        mov              rsi, qword ptr [rbp + 5176]
                        mov              rdx, qword ptr [rbp + 5184]
                        mov              rcx, qword ptr [rbp + 5192]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n35_to_β
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   n37_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 5456], 6
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n28_to_α
.Lx324_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4648], rax
                        .section         .rodata
.Lrkfn326:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rbp + 4640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                        cmp              eax, 99
                                                                                        je    n41_disjunction_β
                                                                                        jmp   n41_disjunction_β
n50_call_builtin_icon_β:
                                                                                        jmp   n41_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 4544], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n60_var_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "s1: "
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 4704], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n41_disjunction_as
n52_lit_string_β:
                                                                                        jmp   n41_disjunction_af
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "-7: "
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6192]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n61_lit_integer_α
n53_var_ref_β:
                                                                                        jmp   n41_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_to_α:
                        mov              rdi, qword ptr [rbp + 4768]
                        mov              rsi, qword ptr [rbp + 4776]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4768], 6
                        mov              qword ptr [rbp + 4776], rax
                        mov              rdi, qword ptr [rbp + 4784]
                        mov              rsi, qword ptr [rbp + 4792]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4784], 6
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4752], rax
.Lx332_0:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              rcx, qword ptr [rbp + 4792]
                        cmp              rax, rcx
                                                                                        jg    n41_disjunction_af
                        mov              qword ptr [rbp + 4736], 6
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n62_subscript_α
n54_to_β:
                        inc              qword ptr [rbp + 4752]
                                                                                        jmp   .Lx332_0
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 4832], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   n41_disjunction_as
n55_lit_string_β:
                                                                                        jmp   n41_disjunction_af
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n54_to_β
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   n41_disjunction_as
n56_deref_β:
                                                                                        jmp   n54_to_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 4992], 6
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n63_lit_integer_α
.Lx335_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:
                        mov              rdi, qword ptr [rbp + 4944]
                        mov              rsi, qword ptr [rbp + 4952]
                        mov              rdx, qword ptr [rbp + 4960]
                        mov              rcx, qword ptr [rbp + 4968]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n44_to_β
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                                                                                        jmp   n46_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 6
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n35_to_α
.Lx337_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n66_lit_integer_α
.Lx340_0:
                        .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:
                        mov              rdi, qword ptr [rbp + 4720]
                        mov              rsi, qword ptr [rbp + 4728]
                        mov              rdx, qword ptr [rbp + 4736]
                        mov              rcx, qword ptr [rbp + 4744]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n54_to_β
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n44_to_α
.Lx342_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 4592], 6
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n67_lit_integer_α
.Lx343_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 4384], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n68_var_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "s2: "
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        mov              qword ptr [rbp + 4784], 6
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n54_to_α
.Lx345_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 4608], 6
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n69_subscript_α
.Lx346_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_subscript_α:
                        mov              rdi, qword ptr [rbp + 4576]
                        mov              rsi, qword ptr [rbp + 4584]
                        mov              rdx, qword ptr [rbp + 4592]
                        mov              rcx, qword ptr [rbp + 4600]
                        mov              r8, qword ptr [rbp + 4608]
                        mov              r9, qword ptr [rbp + 4616]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n65_lit_string_α
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   n72_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 4432], 6
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n73_lit_integer_α
.Lx350_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n74_var_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "s3: "
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4520], rax
                        .section         .rodata
.Lrkfn353:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 4496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    n65_lit_string_α
                                                                                        jmp   n65_lit_string_α
n72_call_builtin_icon_β:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 4448], 6
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n75_binop_α
.Lx354_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n76_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:
                        mov              rdi, qword ptr [rbp + 4432]
                        mov              rsi, qword ptr [rbp + 4440]
                        mov              rdx, qword ptr [rbp + 4448]
                        mov              rcx, qword ptr [rbp + 4456]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n71_lit_string_α
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n78_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 4272], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n79_lit_integer_α
.Lx358_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 4080], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n80_var_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "s4: "
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        mov              rdi, qword ptr [rbp + 4416]
                        mov              rsi, qword ptr [rbp + 4424]
                        mov              rdx, qword ptr [rbp + 4432]
                        mov              rcx, qword ptr [rbp + 4440]
                        mov              r8, qword ptr [rbp + 4464]
                        mov              r9, qword ptr [rbp + 4472]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n71_lit_string_α
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   n81_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rbp + 4288], 6
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n82_binop_α
.Lx361_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4360], rax
                        .section         .rodata
.Lrkfn365:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]
                        lea              rsi, [rbp + 4336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 99
                                                                                        je    n71_lit_string_α
                                                                                        jmp   n71_lit_string_α
n81_call_builtin_icon_β:
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:
                        mov              rdi, qword ptr [rbp + 4272]
                        mov              rsi, qword ptr [rbp + 4280]
                        mov              rdx, qword ptr [rbp + 4288]
                        mov              rcx, qword ptr [rbp + 4296]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n77_lit_string_α
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n85_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 6
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n86_lit_integer_α
.Lx367_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n87_var_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "s5: "
#-----------------------------------------------------------------------------------------------------------------------
n85_subscript_α:
                        mov              rdi, qword ptr [rbp + 4256]
                        mov              rsi, qword ptr [rbp + 4264]
                        mov              rdx, qword ptr [rbp + 4272]
                        mov              rcx, qword ptr [rbp + 4280]
                        mov              r8, qword ptr [rbp + 4304]
                        mov              r9, qword ptr [rbp + 4312]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n77_lit_string_α
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   n88_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n89_subscript_α
.Lx370_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        .section         .rodata
.Lrkfn374:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rbp + 4176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n77_lit_string_α
                                                                                        jmp   n77_lit_string_α
n88_call_builtin_icon_β:
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        mov              rdi, qword ptr [rbp + 4112]
                        mov              rsi, qword ptr [rbp + 4120]
                        mov              rdx, qword ptr [rbp + 4128]
                        mov              rcx, qword ptr [rbp + 4136]
                        mov              r8, qword ptr [rbp + 4144]
                        mov              r9, qword ptr [rbp + 4152]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n84_lit_string_α
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n92_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 3984], 6
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n93_lit_integer_α
.Lx376_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n94_var_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "s6: "
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4056], rax
                        .section         .rodata
.Lrkfn379:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rbp + 4032]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n84_lit_string_α
n92_call_builtin_icon_β:
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n95_subscript_α
.Lx380_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n96_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_subscript_α:
                        mov              rdi, qword ptr [rbp + 3968]
                        mov              rsi, qword ptr [rbp + 3976]
                        mov              rdx, qword ptr [rbp + 3984]
                        mov              rcx, qword ptr [rbp + 3992]
                        mov              r8, qword ptr [rbp + 4000]
                        mov              r9, qword ptr [rbp + 4008]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n91_lit_string_α
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n98_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 3840], 6
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n99_lit_integer_α
.Lx384_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 3648], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n100_var_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "s7: "
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        .section         .rodata
.Lrkfn387:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rbp + 3888]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n91_lit_string_α
                                                                                        jmp   n91_lit_string_α
n98_call_builtin_icon_β:
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 3856], 6
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n101_subscript_α
.Lx388_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n102_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_subscript_α:
                        mov              rdi, qword ptr [rbp + 3824]
                        mov              rsi, qword ptr [rbp + 3832]
                        mov              rdx, qword ptr [rbp + 3840]
                        mov              rcx, qword ptr [rbp + 3848]
                        mov              r8, qword ptr [rbp + 3856]
                        mov              r9, qword ptr [rbp + 3864]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n97_lit_string_α
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 3696], 6
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n105_lit_integer_α
.Lx392_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n106_var_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "s8: "
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3752], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn395:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rbp + 3744]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              eax, 99
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n97_lit_string_α
n104_call_builtin_icon_β:
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n107_subscript_α
.Lx396_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n107_subscript_α:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              rdx, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3704]
                        mov              r8, qword ptr [rbp + 3712]
                        mov              r9, qword ptr [rbp + 3720]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n103_lit_string_α
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n110_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n111_lit_integer_α
.Lx400_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n112_var_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "s9: "
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn403:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n103_lit_string_α
                                                                                        jmp   n103_lit_string_α
n110_call_builtin_icon_β:
                                                                                        jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n113_subscript_α
.Lx404_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n114_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_subscript_α:
                        mov              rdi, qword ptr [rbp + 3536]
                        mov              rsi, qword ptr [rbp + 3544]
                        mov              rdx, qword ptr [rbp + 3552]
                        mov              rcx, qword ptr [rbp + 3560]
                        mov              r8, qword ptr [rbp + 3568]
                        mov              r9, qword ptr [rbp + 3576]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n109_lit_string_α
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 3408], 6
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n117_lit_integer_α
.Lx408_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n118_lit_string_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "k1: "
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3480], rax
                        .section         .rodata
.Lrkfn411:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn411]
                        lea              rsi, [rbp + 3456]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    n109_lit_string_α
                                                                                        jmp   n109_lit_string_α
n116_call_builtin_icon_β:
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 3424], 6
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n119_subscript_α
.Lx412_0:
                        .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n120_lit_integer_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n119_subscript_α:
                        mov              rdi, qword ptr [rbp + 3392]
                        mov              rsi, qword ptr [rbp + 3400]
                        mov              rdx, qword ptr [rbp + 3408]
                        mov              rcx, qword ptr [rbp + 3416]
                        mov              r8, qword ptr [rbp + 3424]
                        mov              r9, qword ptr [rbp + 3432]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n115_lit_string_α
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n121_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 3264], 6
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n122_lit_integer_α
.Lx415_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        .section         .rodata
.Lrkfn417:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n115_lit_string_α
n121_call_builtin_icon_β:
                                                                                        jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        mov              qword ptr [rbp + 3280], 6
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n123_subscript_α
.Lx418_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:
                        mov              rdi, qword ptr [rbp + 3248]
                        mov              rsi, qword ptr [rbp + 3256]
                        mov              rdx, qword ptr [rbp + 3264]
                        mov              rcx, qword ptr [rbp + 3272]
                        mov              r8, qword ptr [rbp + 3280]
                        mov              r9, qword ptr [rbp + 3288]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn421:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n125_lit_string_α
n124_call_builtin_icon_β:
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n126_lit_string_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "k2: "
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n127_lit_integer_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 3104], 6
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n128_lit_integer_α
.Lx424_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rbp + 3120], 6
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n129_binop_α
.Lx425_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              rdi, qword ptr [rbp + 3104]
                        mov              rsi, qword ptr [rbp + 3112]
                        mov              rdx, qword ptr [rbp + 3120]
                        mov              rcx, qword ptr [rbp + 3128]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n131_lit_string_α
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n130_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n130_subscript_α:
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
                        mov              rdx, qword ptr [rbp + 3104]
                        mov              rcx, qword ptr [rbp + 3112]
                        mov              r8, qword ptr [rbp + 3136]
                        mov              r9, qword ptr [rbp + 3144]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n131_lit_string_α
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n133_lit_string_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "k3: "
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn430:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn430]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n131_lit_string_α
n132_call_builtin_icon_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n134_lit_integer_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 6
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n135_lit_integer_α
.Lx432_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 6
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n136_binop_α
.Lx433_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              rsi, qword ptr [rbp + 2952]
                        mov              rdx, qword ptr [rbp + 2960]
                        mov              rcx, qword ptr [rbp + 2968]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n138_lit_string_α
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n137_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n137_subscript_α:
                        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        mov              rdx, qword ptr [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2952]
                        mov              r8, qword ptr [rbp + 2976]
                        mov              r9, qword ptr [rbp + 2984]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    n138_lit_string_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n139_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n140_lit_string_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "k4: "
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn438:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rbp + 2848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n138_lit_string_α
                                                                                        jmp   n138_lit_string_α
n139_call_builtin_icon_β:
                                                                                        jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n141_lit_integer_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n142_lit_integer_α
.Lx440_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 2816], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n143_subscript_α
.Lx441_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n143_subscript_α:
                        mov              rdi, qword ptr [rbp + 2784]
                        mov              rsi, qword ptr [rbp + 2792]
                        mov              rdx, qword ptr [rbp + 2800]
                        mov              rcx, qword ptr [rbp + 2808]
                        mov              r8, qword ptr [rbp + 2816]
                        mov              r9, qword ptr [rbp + 2824]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n145_lit_string_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn444:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n145_lit_string_α
                                                                                        jmp   n145_lit_string_α
n144_call_builtin_icon_β:
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n146_lit_string_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "k5: "
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n147_lit_integer_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n148_lit_integer_α
.Lx447_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n149_subscript_α
.Lx448_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n149_subscript_α:
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        mov              rdx, qword ptr [rbp + 2656]
                        mov              rcx, qword ptr [rbp + 2664]
                        mov              r8, qword ptr [rbp + 2672]
                        mov              r9, qword ptr [rbp + 2680]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n150_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn451:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n151_lit_string_α
                                                                                        jmp   n151_lit_string_α
n150_call_builtin_icon_β:
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n152_lit_string_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "k6: "
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n153_lit_integer_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 2512], 6
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n154_lit_integer_α
.Lx454_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n155_subscript_α
.Lx455_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n155_subscript_α:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        mov              r8, qword ptr [rbp + 2528]
                        mov              r9, qword ptr [rbp + 2536]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n157_lit_string_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn458:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n157_lit_string_α
                                                                                        jmp   n157_lit_string_α
n156_call_builtin_icon_β:
                                                                                        jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n158_lit_string_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "k7: "
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n159_lit_integer_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 2368], 6
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n160_lit_integer_α
.Lx461_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n161_subscript_α
.Lx462_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n161_subscript_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              r8, qword ptr [rbp + 2384]
                        mov              r9, qword ptr [rbp + 2392]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n163_lit_string_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn465:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n163_lit_string_α
                                                                                        jmp   n163_lit_string_α
n162_call_builtin_icon_β:
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n164_lit_string_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "k8: "
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n165_lit_integer_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n166_lit_integer_α
.Lx468_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n167_subscript_α
.Lx469_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n167_subscript_α:
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        mov              r8, qword ptr [rbp + 2240]
                        mov              r9, qword ptr [rbp + 2248]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n169_lit_string_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n168_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn472:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n169_lit_string_α
                                                                                        jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n170_lit_string_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "k9: "
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n171_lit_integer_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n172_lit_integer_α
.Lx475_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n173_subscript_α
.Lx476_0:
                        .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n173_subscript_α:
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        mov              r8, qword ptr [rbp + 2096]
                        mov              r9, qword ptr [rbp + 2104]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n175_lit_string_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n174_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn479:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn479]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n175_lit_string_α
                                                                                        jmp   n175_lit_string_α
n174_call_builtin_icon_β:
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n176_lit_string_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n177_binop_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "de"
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_α:
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n178_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 6208], rax
                        mov              qword ptr [rbp + 6216], rdx
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n180_var_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "t:  "
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn488:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n182_disjunction_α
                                                                                        jmp   n183_call_builtin_icon_α
n181_call_builtin_icon_β:
                                                                                        jmp   n182_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n182_disjunction_α:
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1624], 0
                        mov              dword ptr [rbp + 1632], 0
                                                                                        jmp   n185_var_α
n182_disjunction_as:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0
                                                                                        jne   .Lx490_0
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n184_var_α
.Lx490_0:
                        cmp              eax, 1
                                                                                        jne   .Lx490_1
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n184_var_α
.Lx490_1:
                                                                                        jmp   n184_var_α
n182_disjunction_β:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0
                                                                                        je    n182_disjunction_af
                                                                                        jmp   n182_disjunction_af
n182_disjunction_af:
                        add              dword ptr [rbp + 1632], 1
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 1
                                                                                        je    n186_lit_string_α
                                                                                        jmp   n184_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn492:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n182_disjunction_α
                                                                                        jmp   n182_disjunction_α
n183_call_builtin_icon_β:
                                                                                        jmp   n182_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n191_var_α
n185_var_β:
                                                                                        jmp   n182_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n188_call_builtin_icon_α
n186_lit_string_β:
                                                                                        jmp   n182_disjunction_af
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "not ==="
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6192]
                        mov              rsi, qword ptr [rbp + 6200]
                        mov              rdx, qword ptr [rbp + 6208]
                        mov              rcx, qword ptr [rbp + 6216]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n182_disjunction_af
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n182_disjunction_as
n187_binop_test_β:
                                                                                        jmp   n182_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn500:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n182_disjunction_af
                                                                                        jmp   n182_disjunction_as
n188_call_builtin_icon_β:
                                                                                        jmp   n182_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n192_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n193_lit_string_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "?x:  "
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n187_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6192]
                        mov              rsi, qword ptr [rbp + 6200]
                        mov              rdx, qword ptr [rbp + 6208]
                        mov              rcx, qword ptr [rbp + 6216]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n190_lit_string_α
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n195_random_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n196_call_builtin_icon_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "are ~==="
#-----------------------------------------------------------------------------------------------------------------------
n195_random_α:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n198_lit_string_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n197_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn511:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n190_lit_string_α
                                                                                        jmp   n199_conjunction_α
n196_call_builtin_icon_β:
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n197_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n198_lit_string_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n200_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n201_lit_string_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "?y:  "
#-----------------------------------------------------------------------------------------------------------------------
n199_conjunction_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n190_lit_string_α
n199_conjunction_β:
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn516:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n198_lit_string_α
                                                                                        jmp   n198_lit_string_α
n200_call_builtin_icon_β:
                                                                                        jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n202_random_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "yyyyyyyyyyy"
#-----------------------------------------------------------------------------------------------------------------------
n202_random_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n204_lit_string_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n203_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n203_deref_α:
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n204_lit_string_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n205_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n206_disjunction_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "?z:  "
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn522:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n204_lit_string_α
                                                                                        jmp   n204_lit_string_α
n205_call_builtin_icon_β:
                                                                                        jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n209_lit_string_α
n206_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx524_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n207_call_builtin_icon_α
.Lx524_0:
                        cmp              eax, 1
                                                                                        jne   .Lx524_1
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n207_call_builtin_icon_α
.Lx524_1:
                                                                                        jmp   n207_call_builtin_icon_α
n206_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        je    n206_disjunction_af
                                                                                        jmp   n206_disjunction_af
n206_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1
                                                                                        je    n210_lit_string_α
                                                                                        jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn526:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n206_disjunction_β
                                                                                        jmp   n208_lit_string_α
n207_call_builtin_icon_β:
                                                                                        jmp   n206_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n212_lit_string_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "c1: "
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n213_random_α
n209_lit_string_β:
                                                                                        jmp   n206_disjunction_af
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n206_disjunction_as
n210_lit_string_β:
                                                                                        jmp   n206_disjunction_af
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "nope"
#-----------------------------------------------------------------------------------------------------------------------
n211_deref_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n206_disjunction_af
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n206_disjunction_as
n211_deref_β:
                                                                                        jmp   n206_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n214_lit_string_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n213_random_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n206_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n211_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n215_binop_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n216_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn536:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn536]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n218_call_builtin_icon_α
n216_call_builtin_icon_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n219_lit_string_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "c2: "
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn539:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n217_lit_string_α
                                                                                        jmp   n217_lit_string_α
n218_call_builtin_icon_β:
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n220_lit_string_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n221_binop_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n222_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn544:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n224_call_builtin_icon_α
n222_call_builtin_icon_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n225_lit_string_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "c3: "
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn547:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn547]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n223_lit_string_α
n224_call_builtin_icon_β:
                                                                                        jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n226_lit_string_α
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n227_binop_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n227_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n228_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn552:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn552]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n229_lit_string_α
                                                                                        jmp   n230_call_builtin_icon_α
n228_call_builtin_icon_β:
                                                                                        jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n231_lit_string_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "c4: "
#-----------------------------------------------------------------------------------------------------------------------
n230_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn555:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn555]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n229_lit_string_α
                                                                                        jmp   n229_lit_string_α
n230_call_builtin_icon_β:
                                                                                        jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n232_lit_string_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n233_binop_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "ef"
#-----------------------------------------------------------------------------------------------------------------------
n233_binop_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n234_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn560:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n235_lit_string_α
                                                                                        jmp   n236_call_builtin_icon_α
n234_call_builtin_icon_β:
                                                                                        jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n237_lit_real_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "c5: "
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn563:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn563]
                        lea              rsi, [rbp + 368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n235_lit_string_α
                                                                                        jmp   n235_lit_string_α
n236_call_builtin_icon_β:
                                                                                        jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_real_α:
                        mov              qword ptr [rbp + 320], 7
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n238_lit_integer_α
.Lx564_0:
                        .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n239_binop_α
.Lx565_0:
                        .quad            159
#-----------------------------------------------------------------------------------------------------------------------
n239_binop_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n240_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn568:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n241_lit_string_α
                                                                                        jmp   n242_call_builtin_icon_α
n240_call_builtin_icon_β:
                                                                                        jmp   n241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n243_lit_charset_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "c6: "
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn571:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn571]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n241_lit_string_α
                                                                                        jmp   n241_lit_string_α
n242_call_builtin_icon_β:
                                                                                        jmp   n241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_charset_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              dword ptr [rbp + 148], -1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n244_lit_charset_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_charset_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              dword ptr [rbp + 164], -1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n245_binop_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "def"
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn576:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n247_call_builtin_icon_α
n246_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn578:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn578]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n247_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 6224]
                        add              rsp, 6232
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 6224]
                        add              rsp, 6232
                        ret
                        .section         .note.GNU-stack,"",@progbits
