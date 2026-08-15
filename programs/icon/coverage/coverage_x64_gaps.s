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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 5936
                        mov              qword ptr [rsp + 5912], rcx
                        mov              qword ptr [rsp + 5920], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 3648], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 5456], 0
                        mov              qword ptr [rsp + 5464], 0
                        mov              dword ptr [rsp + 5472], 0;           jmp   n248_var_ref_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 5472]
                        cmp              eax, 0;                              jne   .Lx256_0
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n1_lit_integer_α
.Lx256_0:                                                                     jmp   n1_lit_integer_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 5472];         jmp   n1_lit_integer_α
n0_disjunction_af:      add              dword ptr [rsp + 5472], 1
                        mov              eax, dword ptr [rsp + 5472];         jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 5408], 3            # result
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n2_lit_integer_α
.Lx257_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 5424], 3            # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 5432], rax;         jmp   n3_lit_integer_α
.Lx258_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 5440], 3            # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 5448], rax;         jmp   n4_make_list_α
.Lx259_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n4_make_list_α:         mov              rax, qword ptr [rsp + 5408]
                        mov              qword ptr [rsp + 5360], rax
                        mov              rax, qword ptr [rsp + 5416]
                        mov              qword ptr [rsp + 5368], rax
                        mov              rax, qword ptr [rsp + 5424]
                        mov              qword ptr [rsp + 5376], rax
                        mov              rax, qword ptr [rsp + 5432]
                        mov              qword ptr [rsp + 5384], rax
                        mov              rax, qword ptr [rsp + 5440]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5448]
                        mov              qword ptr [rsp + 5400], rax
                        lea              rdi, [rsp + 5360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx;         jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5872], rax
                        mov              qword ptr [rsp + 5880], rdx;         jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 5872]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5880]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n7_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n7_iterate_α:           mov              qword ptr [rsp + 5312], 0
.Lx266_0:               mov              rdi, qword ptr [rsp + 5328]
                        mov              rsi, qword ptr [rsp + 5336]
                        mov              rdx, qword ptr [rsp + 5312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx
                        cmp              rax, 104;                            je    n9_lit_integer_α
                                                                              jmp   n8_call_builtin_icon_α
n7_iterate_β:           inc              qword ptr [rsp + 5312];              jmp   .Lx266_0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 5272], rax
                        .section         .rodata
.Lrkfn268:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rsp + 5264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx
                        cmp              eax, 104;                            je    n7_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_iterate_β
n8_call_builtin_icon_β:                                                       jmp   n7_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n10_lit_integer_α
.Lx269_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 5024], 3            # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 5032], rax;         jmp   n11_to_α
.Lx270_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n11_to_α:               mov              rdi, qword ptr [rsp + 5008]
                        mov              rsi, qword ptr [rsp + 5016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5008], 3
                        mov              qword ptr [rsp + 5016], rax
                        mov              rdi, qword ptr [rsp + 5024]
                        mov              rsi, qword ptr [rsp + 5032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5024], 3
                        mov              qword ptr [rsp + 5032], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4992], rax
.Lx272_0:               mov              rax, qword ptr [rsp + 4992]
                        mov              rcx, qword ptr [rsp + 5032]
                        cmp              rax, rcx;                            jg    n22_lit_integer_α
                        mov              qword ptr [rsp + 4976], 3
                        mov              qword ptr [rsp + 4984], rax;         jmp   n12_assign_α
n11_to_β:               inc              qword ptr [rsp + 4992];              jmp   .Lx272_0
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              rax, qword ptr [rsp + 4976]
                        mov              rdx, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n13_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n13_bound_α:            mov              qword ptr [rsp + 5040], rsp;         jmp   n14_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n14_disjunction_α:      mov              qword ptr [rsp + 5168], 0
                        mov              qword ptr [rsp + 5176], 0
                        mov              dword ptr [rsp + 5184], 0;           jmp   n19_var_α
n14_disjunction_as:     mov              eax, dword ptr [rsp + 5184]
                        cmp              eax, 0;                              jne   .Lx277_0
                                                                              jmp   n15_var_α
.Lx277_0:                                                                     jmp   n15_var_α
n14_disjunction_β:      mov              eax, dword ptr [rsp + 5184];         jmp   n15_var_α
n14_disjunction_af:     add              dword ptr [rsp + 5184], 1
                        mov              eax, dword ptr [rsp + 5184];         jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5160], rax;         jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 5128], rax
                        .section         .rodata
.Lrkfn281:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rsp + 5120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx
                        cmp              eax, 104;                            je    n18_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_conjunction_α
n16_call_builtin_icon_β:
                                                                              jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_conjunction_α:      mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5096], rax;         jmp   n18_unmark_α
n17_conjunction_β:                                                            jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:           mov              rsp, qword ptr [rsp + 5040];         jmp   n11_to_β
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n20_lit_integer_α
n19_var_β:                                                                    jmp   n14_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 5232], 3            # result
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n21_binop_test_α
.Lx287_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:       mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 112;                            je    .Lx288_0
                        mov              eax, dword ptr [rsp + 5232]
                        cmp              eax, 112;                            je    .Lx288_0
                        mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 3;                              jne   .Lx288_2
                        mov              eax, dword ptr [rsp + 5232]
                        cmp              eax, 3;                              jne   .Lx288_2
.Lx288_1:               mov              rax, qword ptr [rsp + 5672]
                        mov              rcx, qword ptr [rsp + 5240]
                        cmp              rax, rcx;                            jne   n14_disjunction_af
                        mov              rcx, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5200], rcx
                        mov              rcx, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5208], rcx;         jmp   n22_lit_integer_α
.Lx288_0:               mov              rdi, qword ptr [rsp + 5664]
                        mov              rsi, qword ptr [rsp + 5672]
                        mov              rdx, qword ptr [rsp + 5232]
                        mov              rcx, qword ptr [rsp + 5240]
                        mov              r8d, 9
                        lea              r9, [rsp + 5200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx288_1
                        cmp              eax, 1;                              je    n14_disjunction_af
                                                                              jmp   n22_lit_integer_α
.Lx288_2:               mov              rdi, qword ptr [rsp + 5664]
                        mov              rsi, qword ptr [rsp + 5672]
                        mov              rdx, qword ptr [rsp + 5232]
                        mov              rcx, qword ptr [rsp + 5240]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n14_disjunction_af
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rsp + 4960], 3            # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n23_assign_α
.Lx289_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 4960]
                        mov              rdx, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx;         jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              qword ptr [rsp + 4816], 3            # result
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n26_call_builtin_α
.Lx293_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_α:     mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4936], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4912], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4920], rax
                        .section         .rodata
.Lrkfn295:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rsp + 4912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx
                        cmp              eax, 104;                            je    n30_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
n26_call_builtin_β:                                                           jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 4880], 2            # result
                        mov              dword ptr [rsp + 4884], 3
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 4888], rax;         jmp   n28_call_builtin_icon_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4856], rax
                        .section         .rodata
.Lrkfn298:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 4848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              eax, 104;                            je    n39_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_assign_α
n28_call_builtin_icon_β:
                                                                              jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              rax, qword ptr [rsp + 4832]
                        mov              rdx, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 5840], rax
                        mov              qword ptr [rsp + 5848], rdx;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 4672], 3            # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n31_call_builtin_α
.Lx300_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_α:     mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4776], rax
                        .section         .rodata
.Lrkfn302:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 4768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx
                        cmp              eax, 104;                            je    n35_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_lit_string_α
n31_call_builtin_β:                                                           jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              qword ptr [rsp + 4736], 2            # result
                        mov              dword ptr [rsp + 4740], 3
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n33_call_builtin_icon_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4712], rax
                        .section         .rodata
.Lrkfn305:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
                        lea              rsi, [rsp + 4704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              eax, 104;                            je    n39_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_assign_α
n33_call_builtin_icon_β:
                                                                              jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 4688]
                        mov              rdx, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 5840], rax
                        mov              qword ptr [rsp + 5848], rdx;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 5
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n36_call_builtin_icon_α
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "other"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax
                        .section         .rodata
.Lrkfn309:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 4624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              eax, 104;                            je    n39_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_assign_α
n36_call_builtin_icon_β:
                                                                              jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 4608]
                        mov              rdx, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 5840], rax
                        mov              qword ptr [rsp + 5848], rdx;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_charset_α:      mov              qword ptr [rsp + 4560], 2            # result
                        mov              dword ptr [rsp + 4564], -1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n40_assign_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 4560]
                        mov              rdx, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx;         jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n42_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_unop_α:             mov              rdi, qword ptr [rsp + 5824]
                        mov              rsi, qword ptr [rsp + 5832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cset_compl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx;         jmp   n43_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             mov              rdi, qword ptr [rsp + 4528]
                        mov              rsi, qword ptr [rsp + 4536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx;         jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4488], rax
                        .section         .rodata
.Lrkfn320:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rsp + 4480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx
                        cmp              eax, 104;                            je    n45_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_lit_charset_α
n44_call_builtin_icon_β:
                                                                              jmp   n45_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_charset_α:      mov              qword ptr [rsp + 4448], 2            # result
                        mov              dword ptr [rsp + 4452], -1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n46_assign_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 4448]
                        mov              rdx, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n47_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_charset_α:      mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], -1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n48_assign_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 4432]
                        mov              rdx, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 4424], rax;         jmp   n51_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:            mov              rdi, qword ptr [rsp + 4400]
                        mov              rsi, qword ptr [rsp + 4408]
                        mov              rdx, qword ptr [rsp + 4416]
                        mov              rcx, qword ptr [rsp + 4424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              eax, 104;                            je    n54_var_α
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n52_unop_α:             mov              rdi, qword ptr [rsp + 4384]
                        mov              rsi, qword ptr [rsp + 4392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n53_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4344], rax
                        .section         .rodata
.Lrkfn332:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rsp + 4336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx
                        cmp              eax, 104;                            je    n54_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_var_α
n53_call_builtin_icon_β:
                                                                              jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              rdi, qword ptr [rsp + 4288]
                        mov              rsi, qword ptr [rsp + 4296]
                        mov              rdx, qword ptr [rsp + 4304]
                        mov              rcx, qword ptr [rsp + 4312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cinter@PLT
                        cmp              eax, 104;                            je    n59_var_α
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:             mov              rdi, qword ptr [rsp + 4272]
                        mov              rsi, qword ptr [rsp + 4280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4232], rax
                        .section         .rodata
.Lrkfn340:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rsp + 4224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx
                        cmp              eax, 104;                            je    n59_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_var_α
n58_call_builtin_icon_β:
                                                                              jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              rdi, qword ptr [rsp + 4176]
                        mov              rsi, qword ptr [rsp + 4184]
                        mov              rdx, qword ptr [rsp + 4192]
                        mov              rcx, qword ptr [rsp + 4200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        cmp              eax, 104;                            je    n64_lit_integer_α
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_unop_α:             mov              rdi, qword ptr [rsp + 4160]
                        mov              rsi, qword ptr [rsp + 4168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n63_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4120], rax
                        .section         .rodata
.Lrkfn348:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rsp + 4112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        cmp              eax, 104;                            je    n64_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_lit_integer_α
n63_call_builtin_icon_β:
                                                                              jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rsp + 4064], 3            # result
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n65_lit_integer_α
.Lx349_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rsp + 4080], 3            # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n66_call_α
.Lx350_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4024], rax
                        .section         .rodata
.Lrkfn352:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rsp + 4016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              eax, 104;                            je    n68_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n67_assign_α
n66_call_β:                                                                   jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 4000]
                        mov              rdx, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx;         jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n69_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n69_field_get_α:        mov              rdi, qword ptr [rip + .Lx356_0]
                        mov              rsi, qword ptr [rsp + 3984]
                        mov              rdx, qword ptr [rsp + 3992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n71_lit_string_α
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx;         jmp   n70_call_builtin_icon_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3944], rax
                        .section         .rodata
.Lrkfn358:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rsp + 3936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              eax, 104;                            je    n71_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_lit_string_α
n70_call_builtin_icon_β:
                                                                              jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 3904], 2            # result
                        mov              dword ptr [rsp + 3908], 5
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n72_assign_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              rax, qword ptr [rsp + 3904]
                        mov              rdx, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx;         jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 3888]
                        mov              rdx, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 5760], rax
                        mov              qword ptr [rsp + 5768], rdx;         jmp   n75_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n75_disjunction_α:      mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              dword ptr [rsp + 3760], 0;           jmp   n76_var_α
n75_disjunction_as:     mov              eax, dword ptr [rsp + 3760]
                        cmp              eax, 0;                              jne   .Lx365_0
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n81_lit_integer_α
.Lx365_0:                                                                     jmp   n81_lit_integer_α
n75_disjunction_β:      mov              eax, dword ptr [rsp + 3760];         jmp   n81_lit_integer_α
n75_disjunction_af:     add              dword ptr [rsp + 3760], 1
                        mov              eax, dword ptr [rsp + 3760];         jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n77_var_α
n76_var_β:                                                                    jmp   n75_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n78_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_test_α:       mov              rdi, qword ptr [rsp + 5744]
                        mov              rsi, qword ptr [rsp + 5752]
                        mov              rdx, qword ptr [rsp + 5760]
                        mov              rcx, qword ptr [rsp + 5768]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n75_disjunction_af
                        mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 3824], 2            # result
                        mov              dword ptr [rsp + 3828], 4
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n80_call_builtin_icon_α
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          "same"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3800], rax
                        .section         .rodata
.Lrkfn373:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn373]
                        lea              rsi, [rsp + 3792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 104;                            je    n81_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_disjunction_as
n80_call_builtin_icon_β:
                                                                              jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              qword ptr [rsp + 3664], 3            # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n82_lit_integer_α
.Lx374_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n83_lit_integer_α
.Lx375_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n84_to_α
.Lx376_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:               mov              rdi, qword ptr [rsp + 3712]
                        mov              rsi, qword ptr [rsp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3712], 3
                        mov              qword ptr [rsp + 3720], rax
                        mov              rdi, qword ptr [rsp + 3728]
                        mov              rsi, qword ptr [rsp + 3736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3728], 3
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3696], rax
.Lx378_0:               mov              rax, qword ptr [rsp + 3696]
                        mov              rcx, qword ptr [rsp + 3736]
                        cmp              rax, rcx;                            jg    n87_lit_integer_α
                        mov              qword ptr [rsp + 3680], 3
                        mov              qword ptr [rsp + 3688], rax;         jmp   n85_limit_α
n84_to_β:               inc              qword ptr [rsp + 3696];              jmp   .Lx378_0
#-----------------------------------------------------------------------------------------------------------------------
n85_limit_α:            mov              rax, qword ptr [rsp + 3648]
                        mov              rcx, qword ptr [rsp + 3672]
                        cmp              rax, rcx;                            jge   n87_lit_integer_α
                        inc              qword ptr [rsp + 3648]
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n86_call_builtin_icon_α
n85_limit_β:                                                                  jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3608], rax
                        .section         .rodata
.Lrkfn382:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rsp + 3600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 104;                            je    n84_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_to_β
n86_call_builtin_icon_β:
                                                                              jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              qword ptr [rsp + 3536], 3            # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n88_lit_integer_α
.Lx383_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n89_lit_integer_α
.Lx384_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              qword ptr [rsp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n90_make_list_α
.Lx385_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n90_make_list_α:        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3496], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3528], rax
                        lea              rdi, [rsp + 3488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx;         jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              rax, qword ptr [rsp + 3472]
                        mov              rdx, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx;         jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n93_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_unop_α:             mov              rdi, qword ptr [rsp + 5728]
                        mov              rsi, qword ptr [rsp + 5736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n94_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3416], rax
                        .section         .rodata
.Lrkfn393:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rsp + 3408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 104;                            je    n95_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_lit_integer_α
n94_call_builtin_icon_β:
                                                                              jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              qword ptr [rsp + 3152], 3            # result
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n96_lit_integer_α
.Lx394_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              qword ptr [rsp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n97_to_α
.Lx395_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n97_to_α:               mov              rdi, qword ptr [rsp + 3152]
                        mov              rsi, qword ptr [rsp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3152], 3
                        mov              qword ptr [rsp + 3160], rax
                        mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3168], 3
                        mov              qword ptr [rsp + 3176], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3136], rax
.Lx397_0:               mov              rax, qword ptr [rsp + 3136]
                        mov              rcx, qword ptr [rsp + 3176]
                        cmp              rax, rcx;                            jg    n108_lit_string_α
                        mov              qword ptr [rsp + 3120], 3
                        mov              qword ptr [rsp + 3128], rax;         jmp   n98_assign_α
n97_to_β:               inc              qword ptr [rsp + 3136];              jmp   .Lx397_0
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 3120]
                        mov              rdx, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n99_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n99_bound_α:            mov              qword ptr [rsp + 3184], rsp;         jmp   n100_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n100_disjunction_α:     mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              dword ptr [rsp + 3328], 0;           jmp   n104_var_α
n100_disjunction_as:    mov              eax, dword ptr [rsp + 3328]
                        cmp              eax, 0;                              jne   .Lx402_0
                                                                              jmp   n101_var_α
.Lx402_0:                                                                     jmp   n101_var_α
n100_disjunction_β:     mov              eax, dword ptr [rsp + 3328];         jmp   n101_var_α
n100_disjunction_af:    add              dword ptr [rsp + 3328], 1
                        mov              eax, dword ptr [rsp + 3328];         jmp   n101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3272], rax
                        .section         .rodata
.Lrkfn406:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rsp + 3264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              eax, 104;                            je    n107_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_conjunction_α
n102_call_builtin_icon_β:
                                                                              jmp   n107_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n103_conjunction_α:     mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n107_unmark_α
n103_conjunction_β:                                                           jmp   n107_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n105_lit_integer_α
n104_var_β:                                                                   jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     mov              qword ptr [rsp + 3376], 3            # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n106_binop_test_α
.Lx410_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n106_binop_test_α:      mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 112;                            je    .Lx411_0
                        mov              eax, dword ptr [rsp + 3376]
                        cmp              eax, 112;                            je    .Lx411_0
                        mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 3;                              jne   .Lx411_2
                        mov              eax, dword ptr [rsp + 3376]
                        cmp              eax, 3;                              jne   .Lx411_2
.Lx411_1:               mov              rax, qword ptr [rsp + 5672]
                        mov              rcx, qword ptr [rsp + 3384]
                        cmp              rax, rcx;                            jne   n100_disjunction_af
                        mov              rcx, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rcx
                        mov              rcx, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rcx;         jmp   n107_unmark_α
.Lx411_0:               mov              rdi, qword ptr [rsp + 5664]
                        mov              rsi, qword ptr [rsp + 5672]
                        mov              rdx, qword ptr [rsp + 3376]
                        mov              rcx, qword ptr [rsp + 3384]
                        mov              r8d, 9
                        lea              r9, [rsp + 3344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx411_1
                        cmp              eax, 1;                              je    n100_disjunction_af
                                                                              jmp   n107_unmark_α
.Lx411_2:               mov              rdi, qword ptr [rsp + 5664]
                        mov              rsi, qword ptr [rsp + 5672]
                        mov              rdx, qword ptr [rsp + 3376]
                        mov              rcx, qword ptr [rsp + 3384]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n100_disjunction_af
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n107_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n107_unmark_α:          mov              rsp, qword ptr [rsp + 3184];         jmp   n97_to_β
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 5
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n109_assign_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 5712], rax
                        mov              qword ptr [rsp + 5720], rdx;         jmp   n110_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n110_disjunction_α:     mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              dword ptr [rsp + 2992], 0;           jmp   n111_var_α
n110_disjunction_as:    mov              eax, dword ptr [rsp + 2992]
                        cmp              eax, 0;                              jne   .Lx417_0
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n115_lit_integer_α
.Lx417_0:                                                                     jmp   n115_lit_integer_α
n110_disjunction_β:     mov              eax, dword ptr [rsp + 2992];         jmp   n115_lit_integer_α
n110_disjunction_af:    add              dword ptr [rsp + 2992], 1
                        mov              eax, dword ptr [rsp + 2992];         jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n112_unop_test_α
n111_var_β:                                                                   jmp   n110_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n112_unop_test_α:       mov              eax, dword ptr [rsp + 5712]
                        cmp              eax, 104;                            je    n110_disjunction_af
                        cmp              eax, 0;                              je    n110_disjunction_af
                        mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 7
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n114_call_builtin_icon_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "nonnull"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        .section         .rodata
.Lrkfn423:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn423]
                        lea              rsi, [rsp + 3024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 104;                            je    n115_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_disjunction_as
n114_call_builtin_icon_β:
                                                                              jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              qword ptr [rsp + 2960], 3            # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n116_call_builtin_icon_α
.Lx424_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn426:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn426]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n117_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_lit_integer_α
n116_call_builtin_icon_β:
                                                                              jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              qword ptr [rsp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n118_lit_integer_α
.Lx427_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n119_binop_α
.Lx428_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           mov              rdi, qword ptr [rsp + 2880]
                        mov              rsi, qword ptr [rsp + 2888]
                        mov              rdx, qword ptr [rsp + 2896]
                        mov              rcx, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n121_lit_integer_α
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lrkfn431:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104;                            je    n121_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_lit_integer_α
n120_call_builtin_icon_β:
                                                                              jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n122_lit_integer_α
.Lx432_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n123_lit_integer_α
.Lx433_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n124_lit_integer_α
.Lx434_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              qword ptr [rsp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n125_lit_integer_α
.Lx435_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n126_make_list_α
.Lx436_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n126_make_list_α:       mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2664], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2656]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rax, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx;         jmp   n128_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 5696]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n129_random_α
#-----------------------------------------------------------------------------------------------------------------------
n129_random_α:          mov              rdi, qword ptr [rsp + 2608]
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n133_lit_integer_α
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n130_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:           mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n133_lit_integer_α
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n131_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn445:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              eax, 104;                            je    n133_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_call_builtin_icon_α
n131_call_builtin_icon_β:
                                                                              jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        .section         .rodata
.Lrkfn447:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn447]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 104;                            je    n133_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_lit_integer_α
n132_call_builtin_icon_β:
                                                                              jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              qword ptr [rsp + 2464], 3            # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n134_lit_integer_α
.Lx448_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n135_call_α
.Lx449_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn451:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 104;                            je    n137_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_assign_α
n135_call_β:                                                                  jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 2400]
                        mov              rdx, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n138_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n138_field_get_α:       mov              rdi, qword ptr [rip + .Lx455_0]
                        mov              rsi, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n145_lit_integer_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n139_var_α
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n140_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n140_field_get_α:       mov              rdi, qword ptr [rip + .Lx458_0]
                        mov              rsi, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n145_lit_integer_α
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n141_coerce_numeric_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2336]
                        cmp              eax, 5;                              je    .Lx460_1
                        cmp              eax, 3;                              jne   .Lx460_0
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 3;                              jne   .Lx460_0
.Lx460_1:               mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n142_coerce_numeric_α
.Lx460_0:               lea              rdi, [rsp + 2336]
                        lea              rsi, [rsp + 2368]
                        lea              rdx, [rsp + 2320]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 5;                              je    .Lx462_1
                        cmp              eax, 3;                              jne   .Lx462_0
                        mov              eax, dword ptr [rsp + 2336]
                        cmp              eax, 3;                              jne   .Lx462_0
.Lx462_1:               mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n143_binop_α
.Lx462_0:               lea              rdi, [rsp + 2368]
                        lea              rsi, [rsp + 2336]
                        lea              rdx, [rsp + 2304]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           mov              eax, dword ptr [rsp + 2320]
                        cmp              eax, 3;                              jne   .Lx463_0
                        mov              eax, dword ptr [rsp + 2304]
                        cmp              eax, 3;                              jne   .Lx463_0
                        mov              rax, qword ptr [rsp + 2328]
                        mov              rcx, qword ptr [rsp + 2312]
                        add              rax, rcx
                        mov              qword ptr [rsp + 2288], 3
                        mov              qword ptr [rsp + 2296], rax;         jmp   n144_call_builtin_icon_α
.Lx463_0:               mov              rdi, qword ptr [rsp + 2320]
                        mov              rsi, qword ptr [rsp + 2328]
                        mov              rdx, qword ptr [rsp + 2304]
                        mov              rcx, qword ptr [rsp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n145_lit_integer_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        .section         .rodata
.Lrkfn465:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rsp + 2256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104;                            je    n145_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_lit_integer_α
n144_call_builtin_icon_β:
                                                                              jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              qword ptr [rsp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n146_assign_α
.Lx466_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n149_coerce_numeric_α
.Lx470_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 5;                              je    .Lx472_1
                        cmp              eax, 3;                              jne   .Lx472_0
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              eax, 3;                              jne   .Lx472_0
.Lx472_1:               mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n150_binop_α
.Lx472_0:               lea              rdi, [rsp + 5664]
                        lea              rsi, [rsp + 2208]
                        lea              rdx, [rsp + 2176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:           mov              eax, dword ptr [rsp + 2176]
                        cmp              eax, 3;                              jne   .Lx473_0
                        mov              rax, qword ptr [rsp + 2184]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 2160], 3
                        mov              qword ptr [rsp + 2168], rax;         jmp   n151_assign_α
.Lx473_0:               mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n152_disjunction_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              rax, qword ptr [rsp + 2160]
                        mov              rdx, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n152_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n152_disjunction_α:     mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              dword ptr [rsp + 2096], 0;           jmp   n154_var_α
n152_disjunction_as:    mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 0;                              jne   .Lx476_0
                                                                              jmp   n153_conjunction_α
.Lx476_0:                                                                     jmp   n153_conjunction_α
n152_disjunction_β:     mov              eax, dword ptr [rsp + 2096];         jmp   n147_var_α
n152_disjunction_af:    add              dword ptr [rsp + 2096], 1
                        mov              eax, dword ptr [rsp + 2096];         jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_conjunction_α:     mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n147_var_α
n153_conjunction_β:                                                           jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n155_lit_integer_α
n154_var_β:                                                                   jmp   n152_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              qword ptr [rsp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n156_binop_test_α
.Lx480_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_test_α:      mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 112;                            je    .Lx481_0
                        mov              eax, dword ptr [rsp + 2144]
                        cmp              eax, 112;                            je    .Lx481_0
                        mov              eax, dword ptr [rsp + 5664]
                        cmp              eax, 3;                              jne   .Lx481_2
                        mov              eax, dword ptr [rsp + 2144]
                        cmp              eax, 3;                              jne   .Lx481_2
.Lx481_1:               mov              rax, qword ptr [rsp + 5672]
                        mov              rcx, qword ptr [rsp + 2152]
                        cmp              rax, rcx;                            jl    n152_disjunction_af
                        mov              rcx, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rcx
                        mov              rcx, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rcx;         jmp   n157_var_α
.Lx481_0:               mov              rdi, qword ptr [rsp + 5664]
                        mov              rsi, qword ptr [rsp + 5672]
                        mov              rdx, qword ptr [rsp + 2144]
                        mov              rcx, qword ptr [rsp + 2152]
                        mov              r8d, 8
                        lea              r9, [rsp + 2112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx481_1
                        cmp              eax, 1;                              je    n152_disjunction_af
                                                                              jmp   n157_var_α
.Lx481_2:               mov              rdi, qword ptr [rsp + 5664]
                        mov              rsi, qword ptr [rsp + 5672]
                        mov              rdx, qword ptr [rsp + 2144]
                        mov              rcx, qword ptr [rsp + 2152]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n152_disjunction_af
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn485:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn485]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              eax, 104;                            je    n159_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_lit_string_α
n158_call_builtin_icon_β:
                                                                              jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 5
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n160_assign_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n162_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n163_lit_integer_α
.Lx490_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n164_subscript_α
.Lx491_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n164_subscript_α:       mov              rdi, qword ptr [rsp + 1936]
                        mov              rsi, qword ptr [rsp + 1944]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              r8, qword ptr [rsp + 1968]
                        mov              r9, qword ptr [rsp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n166_var_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn494:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn494]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n166_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n166_var_α
n165_call_builtin_icon_β:
                                                                              jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n167_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n168_lit_integer_α
.Lx497_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n169_binop_α
.Lx498_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              rcx, qword ptr [rsp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n172_var_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n170_subscript_α:       mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              rcx, qword ptr [rsp + 1832]
                        mov              r8, qword ptr [rsp + 1856]
                        mov              r9, qword ptr [rsp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n172_var_α
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n171_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn502:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104;                            je    n172_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_var_α
n171_call_builtin_icon_β:
                                                                              jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n174_lit_integer_α
.Lx505_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n175_binop_α
.Lx506_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n178_lit_string_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n176_subscript_α:       mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        mov              r8, qword ptr [rsp + 1728]
                        mov              r9, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n178_lit_string_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n177_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn510:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn510]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 104;                            je    n178_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n178_lit_string_α
n177_call_builtin_icon_β:
                                                                              jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 4
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n179_call_builtin_icon_α
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "side"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn513:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn513]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              eax, 104;                            je    n180_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_lit_integer_α
n179_call_builtin_icon_β:
                                                                              jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n181_conjunction_α
.Lx514_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n181_conjunction_α:     mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n182_assign_α
n181_conjunction_β:                                                           jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n183_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n184_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn520:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn520]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n185_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_disjunction_α
n184_call_builtin_icon_β:
                                                                              jmp   n185_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n185_disjunction_α:     mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              dword ptr [rsp + 1328], 0;           jmp   n186_lit_string_α
n185_disjunction_as:    mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 0;                              jne   .Lx522_0
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n191_disjunction_α
.Lx522_0:                                                                     jmp   n191_disjunction_α
n185_disjunction_β:     mov              eax, dword ptr [rsp + 1328];         jmp   n191_disjunction_α
n185_disjunction_af:    add              dword ptr [rsp + 1328], 1
                        mov              eax, dword ptr [rsp + 1328];         jmp   n191_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 3
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n187_lit_string_α
n186_lit_string_β:                                                            jmp   n185_disjunction_af
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 3
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n188_binop_test_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "abd"
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_test_α:      mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n185_disjunction_af
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 3
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n190_call_builtin_icon_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "slt"
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn528:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 104;                            je    n191_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_disjunction_as
n190_call_builtin_icon_β:
                                                                              jmp   n191_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n191_disjunction_α:     mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              dword ptr [rsp + 1184], 0;           jmp   n192_lit_string_α
n191_disjunction_as:    mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Lx530_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n197_disjunction_α
.Lx530_0:                                                                     jmp   n197_disjunction_α
n191_disjunction_β:     mov              eax, dword ptr [rsp + 1184];         jmp   n197_disjunction_α
n191_disjunction_af:    add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184];         jmp   n197_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n193_lit_string_α
n192_lit_string_β:                                                            jmp   n191_disjunction_af
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "abd"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 3
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n194_binop_test_α
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n194_binop_test_α:      mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n191_disjunction_af
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n196_call_builtin_icon_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "sgt"
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn536:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn536]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n197_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n191_disjunction_as
n196_call_builtin_icon_β:
                                                                              jmp   n197_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n197_disjunction_α:     mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              dword ptr [rsp + 1040], 0;           jmp   n198_lit_string_α
n197_disjunction_as:    mov              eax, dword ptr [rsp + 1040]
                        cmp              eax, 0;                              jne   .Lx538_0
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n203_disjunction_α
.Lx538_0:                                                                     jmp   n203_disjunction_α
n197_disjunction_β:     mov              eax, dword ptr [rsp + 1040];         jmp   n203_disjunction_α
n197_disjunction_af:    add              dword ptr [rsp + 1040], 1
                        mov              eax, dword ptr [rsp + 1040];         jmp   n203_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 3
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n199_lit_string_α
n198_lit_string_β:                                                            jmp   n197_disjunction_af
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 3
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n200_binop_test_α
.Lx540_0:               .quad            .Lx540_0_s
.Lx540_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n200_binop_test_α:      mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n197_disjunction_af
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 3
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n202_call_builtin_icon_α
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "sle"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn544:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n203_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_disjunction_as
n202_call_builtin_icon_β:
                                                                              jmp   n203_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n203_disjunction_α:     mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n204_lit_string_α
n203_disjunction_as:    mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx546_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n209_disjunction_α
.Lx546_0:                                                                     jmp   n209_disjunction_α
n203_disjunction_β:     mov              eax, dword ptr [rsp + 896];          jmp   n209_disjunction_α
n203_disjunction_af:    add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896];          jmp   n209_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 3
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n205_lit_string_α
n204_lit_string_β:                                                            jmp   n203_disjunction_af
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 3
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n206_binop_test_α
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_test_α:      mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        mov              r8d, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n203_disjunction_af
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 3
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n208_call_builtin_icon_α
.Lx550_0:               .quad            .Lx550_0_s
.Lx550_0_s:             .string          "sge"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn552:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn552]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    n209_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_disjunction_as
n208_call_builtin_icon_β:
                                                                              jmp   n209_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n209_disjunction_α:     mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              dword ptr [rsp + 752], 0;            jmp   n210_lit_string_α
n209_disjunction_as:    mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              jne   .Lx554_0
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax;          jmp   n215_disjunction_α
.Lx554_0:                                                                     jmp   n215_disjunction_α
n209_disjunction_β:     mov              eax, dword ptr [rsp + 752];          jmp   n215_disjunction_α
n209_disjunction_af:    add              dword ptr [rsp + 752], 1
                        mov              eax, dword ptr [rsp + 752];          jmp   n215_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 3
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n211_lit_string_α
n210_lit_string_β:                                                            jmp   n209_disjunction_af
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 3
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n212_binop_test_α
.Lx556_0:               .quad            .Lx556_0_s
.Lx556_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n212_binop_test_α:      mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n209_disjunction_af
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 3
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n214_call_builtin_icon_α
.Lx558_0:               .quad            .Lx558_0_s
.Lx558_0_s:             .string          "seq"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn560:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n215_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_disjunction_as
n214_call_builtin_icon_β:
                                                                              jmp   n215_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n215_disjunction_α:     mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n216_lit_string_α
n215_disjunction_as:    mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx562_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n221_lit_string_α
.Lx562_0:                                                                     jmp   n221_lit_string_α
n215_disjunction_β:     mov              eax, dword ptr [rsp + 608];          jmp   n221_lit_string_α
n215_disjunction_af:    add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608];          jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 3
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n217_lit_string_α
n216_lit_string_β:                                                            jmp   n215_disjunction_af
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 3
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n218_binop_test_α
.Lx564_0:               .quad            .Lx564_0_s
.Lx564_0_s:             .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n218_binop_test_α:      mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n215_disjunction_af
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 3
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n220_call_builtin_icon_α
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          "sne"
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn568:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n221_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n215_disjunction_as
n220_call_builtin_icon_β:
                                                                              jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 5
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n222_unop_α
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n222_unop_α:            mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n223_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn572:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn572]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n224_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n224_lit_integer_α
n223_call_builtin_icon_β:
                                                                              jmp   n224_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n225_lit_integer_α
.Lx573_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n226_lit_integer_α
.Lx574_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n227_make_list_α
.Lx575_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n227_make_list_α:       mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n228_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx;         jmp   n229_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 5616]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n231_subscript_α
.Lx581_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n231_subscript_α:       mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n234_lit_integer_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n232_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n232_deref_α:           mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n234_lit_integer_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn585:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n234_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_lit_integer_α
n233_call_builtin_icon_β:
                                                                              jmp   n234_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n235_assign_α
.Lx586_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n236_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n237_assign_α
.Lx588_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx;         jmp   n238_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n238_swap_α:            mov              rax, qword ptr [rsp + 5584]
                        mov              rdx, qword ptr [rsp + 5592]
                        mov              rcx, qword ptr [rsp + 5600]
                        mov              rsi, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 5584], rcx
                        mov              qword ptr [rsp + 5592], rsi
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        mov              qword ptr [rsp + 208], rcx
                        mov              qword ptr [rsp + 216], rsi;          jmp   n239_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 200], rax;          jmp   n240_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn594:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn594]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n241_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_var_α
n240_call_builtin_icon_β:
                                                                              jmp   n241_var_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              rax, qword ptr [r9 + 0]              # gcount
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 112], rax           # result
                        mov              qword ptr [rsp + 120], rdx;          jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n243_coerce_numeric_α
.Lx596_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n243_coerce_numeric_α:  mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 5;                              je    .Lx598_1
                        cmp              eax, 3;                              jne   .Lx598_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx598_0
.Lx598_1:               mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax;          jmp   n244_binop_α
.Lx598_0:               lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:           mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3;                              jne   .Lx599_0
                        mov              rax, qword ptr [rsp + 104]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n245_assign_α
.Lx599_0:               mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n246_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n245_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 0], rax              # gcount
                        mov              qword ptr [r9 + 8], rdx;             jmp   n246_var_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              rax, qword ptr [r9 + 0]              # gcount
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n247_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn603:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn603]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n247_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # main__INITFLAG__0
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx;         jmp   n249_nulltest_var_α
n248_var_ref_β:                                                               jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n249_nulltest_var_α:    mov              eax, dword ptr [rsp + 5520]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 5520]
                        mov              rsi, qword ptr [rsp + 5528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5544], rax;         jmp   n250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     mov              qword ptr [rsp + 5568], 3            # result
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n251_assign_var_α
.Lx607_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_var_α:      mov              rdi, qword ptr [rsp + 5536]
                        mov              rsi, qword ptr [rsp + 5544]
                        mov              rdx, qword ptr [rsp + 5568]
                        mov              rcx, qword ptr [rsp + 5576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n252_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:     mov              qword ptr [rsp + 5504], 3            # result
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n253_assign_α
.Lx609_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:          mov              rax, qword ptr [rsp + 5504]
                        mov              rdx, qword ptr [rsp + 5512]
                        mov              qword ptr [r9 + 0], rax              # gcount
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx;         jmp   n0_disjunction_as
n253_assign_β:                                                                jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
