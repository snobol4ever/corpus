                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
                        .section         .rodata
.Lgvan0:                .string          "gcount"
.Lgvan1:                .string          "main__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 5904
                        mov              qword ptr [rsp + 5880], rcx
                        mov              qword ptr [rsp + 5888], rdx
                        mov              rdi, rsp
                        add              rdi, 5552
                        xor              eax, eax
                        mov              ecx, 304
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 3616], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 5424], 0
                        mov              qword ptr [rsp + 5432], 0
                        mov              dword ptr [rsp + 5440], 0;           jmp   n246_var_ref_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 5440]
                        cmp              eax, 0;                              jne   .Lx254_0
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5432], rax;         jmp   n1_lit_integer_α
.Lx254_0:                                                                     jmp   n1_lit_integer_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 5440];         jmp   n1_lit_integer_α
n0_disjunction_af:      add              dword ptr [rsp + 5440], 1
                        mov              eax, dword ptr [rsp + 5440];         jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 5376], 3            # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 5384], rax;         jmp   n2_lit_integer_α
.Lx255_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 5392], 3            # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 5400], rax;         jmp   n3_lit_integer_α
.Lx256_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 5408], 3            # result
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n4_make_list_α
.Lx257_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n4_make_list_α:         mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5336], rax
                        mov              rax, qword ptr [rsp + 5392]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5400]
                        mov              qword ptr [rsp + 5352], rax
                        mov              rax, qword ptr [rsp + 5408]
                        mov              qword ptr [rsp + 5360], rax
                        mov              rax, qword ptr [rsp + 5416]
                        mov              qword ptr [rsp + 5368], rax
                        lea              rdi, [rsp + 5328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx;         jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rsp + 5312]
                        mov              rdx, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 5840], rax
                        mov              qword ptr [rsp + 5848], rdx;         jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n7_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n7_iterate_α:           mov              qword ptr [rsp + 5280], 0
.Lx264_0:               mov              rdi, qword ptr [rsp + 5296]
                        mov              rsi, qword ptr [rsp + 5304]
                        mov              rdx, qword ptr [rsp + 5280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              rax, 104;                            je    n9_lit_integer_α
                                                                              jmp   n8_call_builtin_icon_α
n7_iterate_β:           inc              qword ptr [rsp + 5280];              jmp   .Lx264_0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5240], rax
                        .section         .rodata
.Lrkfn266:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 5232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx
                        cmp              al, 104;                             je    n7_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_iterate_β
n8_call_builtin_icon_β:                                                       jmp   n7_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n10_lit_integer_α
.Lx267_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n11_to_α
.Lx268_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n11_to_α:               mov              rdi, qword ptr [rsp + 4976]
                        mov              rsi, qword ptr [rsp + 4984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4976], 3
                        mov              qword ptr [rsp + 4984], rax
                        mov              rdi, qword ptr [rsp + 4992]
                        mov              rsi, qword ptr [rsp + 5000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4992], 3
                        mov              qword ptr [rsp + 5000], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4960], rax
.Lx270_0:               mov              rax, qword ptr [rsp + 4960]
                        mov              rcx, qword ptr [rsp + 5000]
                        cmp              rax, rcx;                            jg    n22_lit_integer_α
                        mov              qword ptr [rsp + 4944], 3
                        mov              qword ptr [rsp + 4952], rax;         jmp   n12_assign_α
n11_to_β:               inc              qword ptr [rsp + 4960];              jmp   .Lx270_0
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              rax, qword ptr [rsp + 4944]
                        mov              rdx, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n13_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n13_bound_α:            mov              qword ptr [rsp + 5008], rsp;         jmp   n14_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n14_disjunction_α:      mov              qword ptr [rsp + 5136], 0
                        mov              qword ptr [rsp + 5144], 0
                        mov              dword ptr [rsp + 5152], 0;           jmp   n19_var_α
n14_disjunction_as:     mov              eax, dword ptr [rsp + 5152]
                        cmp              eax, 0;                              jne   .Lx275_0
                                                                              jmp   n15_var_α
.Lx275_0:                                                                     jmp   n15_var_α
n14_disjunction_β:      mov              eax, dword ptr [rsp + 5152];         jmp   n15_var_α
n14_disjunction_af:     add              dword ptr [rsp + 5152], 1
                        mov              eax, dword ptr [rsp + 5152];         jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5096], rax
                        .section         .rodata
.Lrkfn279:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rsp + 5088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx
                        cmp              al, 104;                             je    n18_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_conjunction_α
n16_call_builtin_icon_β:
                                                                              jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_conjunction_α:      mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n18_unmark_α
n17_conjunction_β:                                                            jmp   n18_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:           mov              rsp, qword ptr [rsp + 5008];         jmp   n11_to_β
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5184], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n20_lit_integer_α
n19_var_β:                                                                    jmp   n14_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 5200], 3            # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n21_binop_test_α
.Lx285_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:       mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 112;                             je    .Lx286_0
                        mov              eax, dword ptr [rsp + 5200]
                        cmp              al, 112;                             je    .Lx286_0
                        mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 3;                               jne   .Lx286_2
                        mov              eax, dword ptr [rsp + 5200]
                        cmp              al, 3;                               jne   .Lx286_2
.Lx286_1:               mov              rax, qword ptr [rsp + 5640]
                        mov              rcx, qword ptr [rsp + 5208]
                        cmp              rax, rcx;                            jne   n14_disjunction_af
                        mov              rcx, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5168], rcx
                        mov              rcx, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5176], rcx;         jmp   n22_lit_integer_α
.Lx286_0:               mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              rdx, qword ptr [rsp + 5200]
                        mov              rcx, qword ptr [rsp + 5208]
                        mov              r8d, 9
                        lea              r9, [rsp + 5168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx286_1
                        cmp              eax, 1;                              je    n14_disjunction_af
                                                                              jmp   n22_lit_integer_α
.Lx286_2:               mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              rdx, qword ptr [rsp + 5200]
                        mov              rcx, qword ptr [rsp + 5208]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n14_disjunction_af
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rsp + 4928], 3            # result
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 4936], rax;         jmp   n23_assign_α
.Lx287_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 4928]
                        mov              rdx, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx;         jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              qword ptr [rsp + 4784], 3            # result
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n26_call_builtin_α
.Lx291_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_α:     mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4904], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4888], rax
                        .section         .rodata
.Lrkfn293:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 4880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              al, 104;                             je    n30_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_β:                                                           jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 3
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n28_call_builtin_icon_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4824], rax
                        .section         .rodata
.Lrkfn296:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rsp + 4816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx
                        cmp              al, 104;                             je    n39_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_assign_α
n28_call_builtin_icon_β:
                                                                              jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              rax, qword ptr [rsp + 4800]
                        mov              rdx, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 4640], 3            # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 4648], rax;         jmp   n31_call_builtin_α
.Lx298_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_α:     mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4760], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4744], rax
                        .section         .rodata
.Lrkfn300:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rsp + 4736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx
                        cmp              al, 104;                             je    n35_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_lit_string_α
n31_call_builtin_β:                                                           jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              qword ptr [rsp + 4704], 2            # result
                        mov              dword ptr [rsp + 4708], 3
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n33_call_builtin_icon_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4680], rax
                        .section         .rodata
.Lrkfn303:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 4672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                        cmp              al, 104;                             je    n39_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_assign_α
n33_call_builtin_icon_β:
                                                                              jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 4656]
                        mov              rdx, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              qword ptr [rsp + 4624], 2            # result
                        mov              dword ptr [rsp + 4628], 5
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n36_call_builtin_icon_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "other"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4600], rax
                        .section         .rodata
.Lrkfn307:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rsp + 4592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              al, 104;                             je    n39_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_assign_α
n36_call_builtin_icon_β:
                                                                              jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 4576]
                        mov              rdx, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n39_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_charset_α:      mov              qword ptr [rsp + 4528], 2            # result
                        mov              dword ptr [rsp + 4532], -1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n40_assign_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 4528]
                        mov              rdx, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n42_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_unop_α:             mov              rdi, qword ptr [rsp + 5792]
                        mov              rsi, qword ptr [rsp + 5800]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cset_compl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n43_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             mov              rdi, qword ptr [rsp + 4496]
                        mov              rsi, qword ptr [rsp + 4504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4456], rax
                        .section         .rodata
.Lrkfn318:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]
                        lea              rsi, [rsp + 4448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx
                        cmp              al, 104;                             je    n45_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_lit_charset_α
n44_call_builtin_icon_β:
                                                                              jmp   n45_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_charset_α:      mov              qword ptr [rsp + 4416], 2            # result
                        mov              dword ptr [rsp + 4420], -1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 4424], rax;         jmp   n46_assign_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 4416]
                        mov              rdx, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 5760], rax
                        mov              qword ptr [rsp + 5768], rdx;         jmp   n47_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_charset_α:      mov              qword ptr [rsp + 4400], 2            # result
                        mov              dword ptr [rsp + 4404], -1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n48_assign_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 4400]
                        mov              rdx, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx;         jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n51_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:            mov              rdi, qword ptr [rsp + 5760]
                        mov              rsi, qword ptr [rsp + 5768]
                        mov              rdx, qword ptr [rsp + 5776]
                        mov              rcx, qword ptr [rsp + 5784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n54_var_α
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n52_unop_α:             mov              rdi, qword ptr [rsp + 4352]
                        mov              rsi, qword ptr [rsp + 4360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n53_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        .section         .rodata
.Lrkfn330:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rsp + 4304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n54_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_var_α
n53_call_builtin_icon_β:
                                                                              jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              rdi, qword ptr [rsp + 5760]
                        mov              rsi, qword ptr [rsp + 5768]
                        mov              rdx, qword ptr [rsp + 5776]
                        mov              rcx, qword ptr [rsp + 5784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cinter@PLT
                        cmp              al, 104;                             je    n59_var_α
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:             mov              rdi, qword ptr [rsp + 4240]
                        mov              rsi, qword ptr [rsp + 4248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx;         jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4200], rax
                        .section         .rodata
.Lrkfn338:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rsp + 4192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx
                        cmp              al, 104;                             je    n59_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_var_α
n58_call_builtin_icon_β:
                                                                              jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              rdi, qword ptr [rsp + 5760]
                        mov              rsi, qword ptr [rsp + 5768]
                        mov              rdx, qword ptr [rsp + 5776]
                        mov              rcx, qword ptr [rsp + 5784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n64_lit_integer_α
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_unop_α:             mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n63_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4088], rax
                        .section         .rodata
.Lrkfn346:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rsp + 4080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    n64_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_lit_integer_α
n63_call_builtin_icon_β:
                                                                              jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rsp + 4032], 3            # result
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n65_lit_integer_α
.Lx347_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n66_call_α
.Lx348_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3992], rax
                        .section         .rodata
.Lrkfn350:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 3984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              al, 104;                             je    n68_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_assign_α
n66_call_β:                                                                   jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 3968]
                        mov              rdx, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx;         jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n69_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n69_field_get_α:        mov              rdi, qword ptr [rip + .Lx354_0]
                        mov              rsi, qword ptr [rsp + 3952]
                        mov              rdx, qword ptr [rsp + 3960]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n71_lit_string_α
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n70_call_builtin_icon_α
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3912], rax
                        .section         .rodata
.Lrkfn356:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]
                        lea              rsi, [rsp + 3904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    n71_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_lit_string_α
n70_call_builtin_icon_β:
                                                                              jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 5
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n72_assign_α
.Lx357_0:               .quad            .Lx357_0_s
.Lx357_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              rax, qword ptr [rsp + 3872]
                        mov              rdx, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 5712], rax
                        mov              qword ptr [rsp + 5720], rdx;         jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 3856]
                        mov              rdx, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 5728], rax
                        mov              qword ptr [rsp + 5736], rdx;         jmp   n75_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n75_disjunction_α:      mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              dword ptr [rsp + 3728], 0;           jmp   n76_var_α
n75_disjunction_as:     mov              eax, dword ptr [rsp + 3728]
                        cmp              eax, 0;                              jne   .Lx363_0
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n81_lit_integer_α
.Lx363_0:                                                                     jmp   n81_lit_integer_α
n75_disjunction_β:      mov              eax, dword ptr [rsp + 3728];         jmp   n81_lit_integer_α
n75_disjunction_af:     add              dword ptr [rsp + 3728], 1
                        mov              eax, dword ptr [rsp + 3728];         jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n77_var_α
n76_var_β:                                                                    jmp   n75_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n78_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_test_α:       mov              rdi, qword ptr [rsp + 5712]
                        mov              rsi, qword ptr [rsp + 5720]
                        mov              rdx, qword ptr [rsp + 5728]
                        mov              rcx, qword ptr [rsp + 5736]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n75_disjunction_af
                        mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 4
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n80_call_builtin_icon_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "same"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3768], rax
                        .section         .rodata
.Lrkfn371:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]
                        lea              rsi, [rsp + 3760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    n81_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_disjunction_as
n80_call_builtin_icon_β:
                                                                              jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              qword ptr [rsp + 3632], 3            # result
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n82_lit_integer_α
.Lx372_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              qword ptr [rsp + 3680], 3            # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n83_lit_integer_α
.Lx373_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              qword ptr [rsp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n84_to_α
.Lx374_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:               mov              rdi, qword ptr [rsp + 3680]
                        mov              rsi, qword ptr [rsp + 3688]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3680], 3
                        mov              qword ptr [rsp + 3688], rax
                        mov              rdi, qword ptr [rsp + 3696]
                        mov              rsi, qword ptr [rsp + 3704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3696], 3
                        mov              qword ptr [rsp + 3704], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3664], rax
.Lx376_0:               mov              rax, qword ptr [rsp + 3664]
                        mov              rcx, qword ptr [rsp + 3704]
                        cmp              rax, rcx;                            jg    n87_lit_integer_α
                        mov              qword ptr [rsp + 3648], 3
                        mov              qword ptr [rsp + 3656], rax;         jmp   n85_limit_α
n84_to_β:               inc              qword ptr [rsp + 3664];              jmp   .Lx376_0
#-----------------------------------------------------------------------------------------------------------------------
n85_limit_α:            mov              rax, qword ptr [rsp + 3616]
                        mov              rcx, qword ptr [rsp + 3640]
                        cmp              rax, rcx;                            jge   n87_lit_integer_α
                        inc              qword ptr [rsp + 3616]
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n86_call_builtin_icon_α
n85_limit_β:                                                                  jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3576], rax
                        .section         .rodata
.Lrkfn380:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rsp + 3568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    n84_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_to_β
n86_call_builtin_icon_β:
                                                                              jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              qword ptr [rsp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n88_lit_integer_α
.Lx381_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n89_lit_integer_α
.Lx382_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              qword ptr [rsp + 3536], 3            # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n90_make_list_α
.Lx383_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n90_make_list_α:        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3496], rax
                        lea              rdi, [rsp + 3456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              rax, qword ptr [rsp + 3440]
                        mov              rdx, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx;         jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n93_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_unop_α:             mov              rdi, qword ptr [rsp + 5696]
                        mov              rsi, qword ptr [rsp + 5704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n94_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn391:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]
                        lea              rsi, [rsp + 3376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              al, 104;                             je    n95_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_lit_integer_α
n94_call_builtin_icon_β:
                                                                              jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              qword ptr [rsp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n96_lit_integer_α
.Lx392_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n97_to_α
.Lx393_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n97_to_α:               mov              rdi, qword ptr [rsp + 3120]
                        mov              rsi, qword ptr [rsp + 3128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3120], 3
                        mov              qword ptr [rsp + 3128], rax
                        mov              rdi, qword ptr [rsp + 3136]
                        mov              rsi, qword ptr [rsp + 3144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3136], 3
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3104], rax
.Lx395_0:               mov              rax, qword ptr [rsp + 3104]
                        mov              rcx, qword ptr [rsp + 3144]
                        cmp              rax, rcx;                            jg    n108_lit_string_α
                        mov              qword ptr [rsp + 3088], 3
                        mov              qword ptr [rsp + 3096], rax;         jmp   n98_assign_α
n97_to_β:               inc              qword ptr [rsp + 3104];              jmp   .Lx395_0
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n99_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n99_bound_α:            mov              qword ptr [rsp + 3152], rsp;         jmp   n100_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n100_disjunction_α:     mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              dword ptr [rsp + 3296], 0;           jmp   n104_var_α
n100_disjunction_as:    mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 0;                              jne   .Lx400_0
                                                                              jmp   n101_var_α
.Lx400_0:                                                                     jmp   n101_var_α
n100_disjunction_β:     mov              eax, dword ptr [rsp + 3296];         jmp   n101_var_α
n100_disjunction_af:    add              dword ptr [rsp + 3296], 1
                        mov              eax, dword ptr [rsp + 3296];         jmp   n101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn404:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn404]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n107_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_conjunction_α
n102_call_builtin_icon_β:
                                                                              jmp   n107_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n103_conjunction_α:     mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n107_unmark_α
n103_conjunction_β:                                                           jmp   n107_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n105_lit_integer_α
n104_var_β:                                                                   jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     mov              qword ptr [rsp + 3344], 3            # result
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n106_binop_test_α
.Lx408_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n106_binop_test_α:      mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 112;                             je    .Lx409_0
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              al, 112;                             je    .Lx409_0
                        mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 3;                               jne   .Lx409_2
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              al, 3;                               jne   .Lx409_2
.Lx409_1:               mov              rax, qword ptr [rsp + 5640]
                        mov              rcx, qword ptr [rsp + 3352]
                        cmp              rax, rcx;                            jne   n100_disjunction_af
                        mov              rcx, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rcx
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rcx;         jmp   n107_unmark_α
.Lx409_0:               mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              r8d, 9
                        lea              r9, [rsp + 3312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx409_1
                        cmp              eax, 1;                              je    n100_disjunction_af
                                                                              jmp   n107_unmark_α
.Lx409_2:               mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              rdx, qword ptr [rsp + 3344]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n100_disjunction_af
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n107_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n107_unmark_α:          mov              rsp, qword ptr [rsp + 3152];         jmp   n97_to_β
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 3072], 2            # result
                        mov              dword ptr [rsp + 3076], 5
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n109_assign_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rax, qword ptr [rsp + 3072]
                        mov              rdx, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n110_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n110_disjunction_α:     mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              dword ptr [rsp + 2960], 0;           jmp   n111_var_α
n110_disjunction_as:    mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 0;                              jne   .Lx415_0
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n115_lit_integer_α
.Lx415_0:                                                                     jmp   n115_lit_integer_α
n110_disjunction_β:     mov              eax, dword ptr [rsp + 2960];         jmp   n115_lit_integer_α
n110_disjunction_af:    add              dword ptr [rsp + 2960], 1
                        mov              eax, dword ptr [rsp + 2960];         jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n112_unop_test_α
n111_var_β:                                                                   jmp   n110_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n112_unop_test_α:       mov              eax, dword ptr [rsp + 5680]
                        cmp              al, 104;                             je    n110_disjunction_af
                        cmp              eax, 0;                              je    n110_disjunction_af
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 7
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n114_call_builtin_icon_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "nonnull"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn421:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n115_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_disjunction_as
n114_call_builtin_icon_β:
                                                                              jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              qword ptr [rsp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n116_call_builtin_icon_α
.Lx422_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2904], rax
                        .section         .rodata
.Lrkfn424:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rsp + 2896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              al, 104;                             je    n117_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_lit_integer_α
n116_call_builtin_icon_β:
                                                                              jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              qword ptr [rsp + 2848], 3            # result
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n118_lit_integer_α
.Lx425_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              qword ptr [rsp + 2864], 3            # result
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n119_binop_α
.Lx426_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           mov              rdi, qword ptr [rsp + 2848]
                        mov              rsi, qword ptr [rsp + 2856]
                        mov              rdx, qword ptr [rsp + 2864]
                        mov              rcx, qword ptr [rsp + 2872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n121_lit_integer_α
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn429:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n121_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_lit_integer_α
n120_call_builtin_icon_β:
                                                                              jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              qword ptr [rsp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n122_lit_integer_α
.Lx430_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n123_lit_integer_α
.Lx431_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n124_lit_integer_α
.Lx432_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n125_lit_integer_α
.Lx433_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n126_make_list_α
.Lx434_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n126_make_list_α:       mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2736]
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
                        lea              rdi, [rsp + 2624]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rax, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n128_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 5664]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n129_random_α
#-----------------------------------------------------------------------------------------------------------------------
n129_random_α:          mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n133_lit_integer_α
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n130_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_deref_α:           mov              rdi, qword ptr [rsp + 2560]
                        mov              rsi, qword ptr [rsp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n133_lit_integer_α
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n131_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn443:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn443]
                        lea              rsi, [rsp + 2528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n133_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_call_builtin_icon_α
n131_call_builtin_icon_β:
                                                                              jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax
                        .section         .rodata
.Lrkfn445:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n133_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_lit_integer_α
n132_call_builtin_icon_β:
                                                                              jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n134_lit_integer_α
.Lx446_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     mov              qword ptr [rsp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n135_call_α
.Lx447_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2392], rax
                        .section         .rodata
.Lrkfn449:              .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rsp + 2384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n137_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n136_assign_α
n135_call_β:                                                                  jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n138_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n138_field_get_α:       mov              rdi, qword ptr [rip + .Lx453_0]
                        mov              rsi, qword ptr [rsp + 2320]
                        mov              rdx, qword ptr [rsp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n145_lit_integer_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n139_var_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n140_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n140_field_get_α:       mov              rdi, qword ptr [rip + .Lx456_0]
                        mov              rsi, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n145_lit_integer_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n141_coerce_numeric_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2304]
                        cmp              al, 5;                               je    .Lx458_1
                        cmp              al, 3;                               jne   .Lx458_0
                        mov              eax, dword ptr [rsp + 2336]
                        cmp              al, 3;                               jne   .Lx458_0
.Lx458_1:               mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n142_coerce_numeric_α
.Lx458_0:               lea              rdi, [rsp + 2304]
                        lea              rsi, [rsp + 2336]
                        lea              rdx, [rsp + 2288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2336]
                        cmp              al, 5;                               je    .Lx460_1
                        cmp              al, 3;                               jne   .Lx460_0
                        mov              eax, dword ptr [rsp + 2304]
                        cmp              al, 3;                               jne   .Lx460_0
.Lx460_1:               mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n143_binop_α
.Lx460_0:               lea              rdi, [rsp + 2336]
                        lea              rsi, [rsp + 2304]
                        lea              rdx, [rsp + 2272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           mov              eax, dword ptr [rsp + 2288]
                        mov              ecx, dword ptr [rsp + 2272]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx461_2
                        mov              rax, qword ptr [rsp + 2296]
                        mov              rdx, qword ptr [rsp + 2280]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2256], 3
                        mov              qword ptr [rsp + 2264], rax;         jmp   .Lx461_7
.Lx461_2:               and              edx, 1;                              jz    .Lx461_0
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              rdi, qword ptr [rsp + 2280]
                        cmp              al, 5;                               je    .Lx461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx461_4
.Lx461_3:               movq             xmm0, rsi
.Lx461_4:               cmp              cl, 5;                               je    .Lx461_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx461_6
.Lx461_5:               movq             xmm1, rdi
.Lx461_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2256], 5
                        mov              qword ptr [rsp + 2264], rax
.Lx461_7:                                                                     jmp   n144_call_builtin_icon_α
.Lx461_0:               mov              rdi, qword ptr [rsp + 2288]
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              rdx, qword ptr [rsp + 2272]
                        mov              rcx, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n145_lit_integer_α
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn463:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n145_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_lit_integer_α
n144_call_builtin_icon_β:
                                                                              jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n146_assign_α
.Lx464_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n149_coerce_numeric_α
.Lx468_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 5;                               je    .Lx470_1
                        cmp              al, 3;                               jne   .Lx470_0
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              al, 3;                               jne   .Lx470_0
.Lx470_1:               mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n150_binop_α
.Lx470_0:               lea              rdi, [rsp + 5632]
                        lea              rsi, [rsp + 2176]
                        lea              rdx, [rsp + 2144]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:           mov              eax, dword ptr [rsp + 2144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx471_2
                        mov              rax, qword ptr [rsp + 2152]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 2128], 3
                        mov              qword ptr [rsp + 2136], rax;         jmp   .Lx471_7
.Lx471_2:               and              edx, 1;                              jz    .Lx471_0
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx471_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx471_4
.Lx471_3:               movq             xmm0, rsi
.Lx471_4:               cmp              cl, 5;                               je    .Lx471_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx471_6
.Lx471_5:               movq             xmm1, rdi
.Lx471_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2128], 5
                        mov              qword ptr [rsp + 2136], rax
.Lx471_7:                                                                     jmp   n151_assign_α
.Lx471_0:               mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n152_disjunction_α
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n151_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              rax, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n152_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n152_disjunction_α:     mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              dword ptr [rsp + 2064], 0;           jmp   n154_var_α
n152_disjunction_as:    mov              eax, dword ptr [rsp + 2064]
                        cmp              eax, 0;                              jne   .Lx474_0
                                                                              jmp   n153_conjunction_α
.Lx474_0:                                                                     jmp   n153_conjunction_α
n152_disjunction_β:     mov              eax, dword ptr [rsp + 2064];         jmp   n147_var_α
n152_disjunction_af:    add              dword ptr [rsp + 2064], 1
                        mov              eax, dword ptr [rsp + 2064];         jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_conjunction_α:     mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n147_var_α
n153_conjunction_β:                                                           jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n155_lit_integer_α
n154_var_β:                                                                   jmp   n152_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n156_binop_test_α
.Lx478_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_test_α:      mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 112;                             je    .Lx479_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 112;                             je    .Lx479_0
                        mov              eax, dword ptr [rsp + 5632]
                        cmp              al, 3;                               jne   .Lx479_2
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lx479_2
.Lx479_1:               mov              rax, qword ptr [rsp + 5640]
                        mov              rcx, qword ptr [rsp + 2120]
                        cmp              rax, rcx;                            jl    n152_disjunction_af
                        mov              rcx, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rcx
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rcx;         jmp   n157_var_α
.Lx479_0:               mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              r8d, 8
                        lea              r9, [rsp + 2080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx479_1
                        cmp              eax, 1;                              je    n152_disjunction_af
                                                                              jmp   n157_var_α
.Lx479_2:               mov              rdi, qword ptr [rsp + 5632]
                        mov              rsi, qword ptr [rsp + 5640]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n152_disjunction_af
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn483:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n159_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_lit_string_α
n158_call_builtin_icon_β:
                                                                              jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 5
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n160_assign_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx;         jmp   n161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n162_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n163_lit_integer_α
.Lx488_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n164_subscript_α
.Lx489_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n164_subscript_α:       mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              r8, qword ptr [rsp + 1936]
                        mov              r9, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n166_var_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn492:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n166_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n166_var_α
n165_call_builtin_icon_β:
                                                                              jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n167_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n168_lit_integer_α
.Lx495_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n169_subscript_α
.Lx496_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n169_subscript_α:       mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8, qword ptr [rsp + 1824]
                        mov              r9, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n171_var_α
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n170_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn499:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn499]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n171_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_var_α
n170_call_builtin_icon_β:
                                                                              jmp   n171_var_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n172_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              qword ptr [rsp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n173_lit_integer_α
.Lx502_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n174_subscript_α
.Lx503_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n174_subscript_α:       mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        mov              r8, qword ptr [rsp + 1712]
                        mov              r9, qword ptr [rsp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n176_lit_string_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n175_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn506:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n176_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_lit_string_α
n175_call_builtin_icon_β:
                                                                              jmp   n176_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 4
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n177_call_builtin_icon_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "side"
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn509:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n178_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n178_lit_integer_α
n177_call_builtin_icon_β:
                                                                              jmp   n178_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n179_conjunction_α
.Lx510_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n179_conjunction_α:     mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n180_assign_α
n179_conjunction_β:                                                           jmp   n181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx;         jmp   n181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             mov              rax, qword ptr [rsp + 5600]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n182_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn516:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n183_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_disjunction_α
n182_call_builtin_icon_β:
                                                                              jmp   n183_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n183_disjunction_α:     mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              dword ptr [rsp + 1328], 0;           jmp   n184_lit_string_α
n183_disjunction_as:    mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 0;                              jne   .Lx518_0
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n189_disjunction_α
.Lx518_0:                                                                     jmp   n189_disjunction_α
n183_disjunction_β:     mov              eax, dword ptr [rsp + 1328];         jmp   n189_disjunction_α
n183_disjunction_af:    add              dword ptr [rsp + 1328], 1
                        mov              eax, dword ptr [rsp + 1328];         jmp   n189_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 3
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n185_lit_string_α
n184_lit_string_β:                                                            jmp   n183_disjunction_af
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 3
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n186_binop_test_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "abd"
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_test_α:      mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n183_disjunction_af
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 3
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n188_call_builtin_icon_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "slt"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn524:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn524]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n189_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_disjunction_as
n188_call_builtin_icon_β:
                                                                              jmp   n189_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n189_disjunction_α:     mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              dword ptr [rsp + 1184], 0;           jmp   n190_lit_string_α
n189_disjunction_as:    mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Lx526_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n195_disjunction_α
.Lx526_0:                                                                     jmp   n195_disjunction_α
n189_disjunction_β:     mov              eax, dword ptr [rsp + 1184];         jmp   n195_disjunction_α
n189_disjunction_af:    add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184];         jmp   n195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n191_lit_string_α
n190_lit_string_β:                                                            jmp   n189_disjunction_af
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "abd"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 3
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n192_binop_test_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_test_α:      mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n189_disjunction_af
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n194_call_builtin_icon_α
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "sgt"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn532:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn532]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n195_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_disjunction_as
n194_call_builtin_icon_β:
                                                                              jmp   n195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n195_disjunction_α:     mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              dword ptr [rsp + 1040], 0;           jmp   n196_lit_string_α
n195_disjunction_as:    mov              eax, dword ptr [rsp + 1040]
                        cmp              eax, 0;                              jne   .Lx534_0
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n201_disjunction_α
.Lx534_0:                                                                     jmp   n201_disjunction_α
n195_disjunction_β:     mov              eax, dword ptr [rsp + 1040];         jmp   n201_disjunction_α
n195_disjunction_af:    add              dword ptr [rsp + 1040], 1
                        mov              eax, dword ptr [rsp + 1040];         jmp   n201_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 3
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n197_lit_string_α
n196_lit_string_β:                                                            jmp   n195_disjunction_af
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 3
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n198_binop_test_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_test_α:      mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n195_disjunction_af
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 3
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n200_call_builtin_icon_α
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "sle"
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn540:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n201_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n195_disjunction_as
n200_call_builtin_icon_β:
                                                                              jmp   n201_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n201_disjunction_α:     mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n202_lit_string_α
n201_disjunction_as:    mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx542_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n207_disjunction_α
.Lx542_0:                                                                     jmp   n207_disjunction_α
n201_disjunction_β:     mov              eax, dword ptr [rsp + 896];          jmp   n207_disjunction_α
n201_disjunction_af:    add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896];          jmp   n207_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 3
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n203_lit_string_α
n202_lit_string_β:                                                            jmp   n201_disjunction_af
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 3
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n204_binop_test_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n204_binop_test_α:      mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        mov              r8d, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n201_disjunction_af
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 3
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n206_call_builtin_icon_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "sge"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn548:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn548]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n207_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n201_disjunction_as
n206_call_builtin_icon_β:
                                                                              jmp   n207_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n207_disjunction_α:     mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              dword ptr [rsp + 752], 0;            jmp   n208_lit_string_α
n207_disjunction_as:    mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              jne   .Lx550_0
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax;          jmp   n213_disjunction_α
.Lx550_0:                                                                     jmp   n213_disjunction_α
n207_disjunction_β:     mov              eax, dword ptr [rsp + 752];          jmp   n213_disjunction_α
n207_disjunction_af:    add              dword ptr [rsp + 752], 1
                        mov              eax, dword ptr [rsp + 752];          jmp   n213_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 3
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n209_lit_string_α
n208_lit_string_β:                                                            jmp   n207_disjunction_af
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 3
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n210_binop_test_α
.Lx552_0:               .quad            .Lx552_0_s
.Lx552_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_test_α:      mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n207_disjunction_af
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 3
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n212_call_builtin_icon_α
.Lx554_0:               .quad            .Lx554_0_s
.Lx554_0_s:             .string          "seq"
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn556:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n213_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n207_disjunction_as
n212_call_builtin_icon_β:
                                                                              jmp   n213_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n213_disjunction_α:     mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n214_lit_string_α
n213_disjunction_as:    mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx558_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n219_lit_string_α
.Lx558_0:                                                                     jmp   n219_lit_string_α
n213_disjunction_β:     mov              eax, dword ptr [rsp + 608];          jmp   n219_lit_string_α
n213_disjunction_af:    add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608];          jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 3
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n215_lit_string_α
n214_lit_string_β:                                                            jmp   n213_disjunction_af
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 3
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n216_binop_test_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_test_α:      mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n213_disjunction_af
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 3
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n218_call_builtin_icon_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "sne"
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn564:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n219_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_disjunction_as
n218_call_builtin_icon_β:
                                                                              jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 5
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n220_unop_α
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n220_unop_α:            mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n221_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn568:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n222_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n222_lit_integer_α
n221_call_builtin_icon_β:
                                                                              jmp   n222_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n223_lit_integer_α
.Lx569_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n224_lit_integer_α
.Lx570_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n225_make_list_α
.Lx571_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n225_make_list_α:       mov              rax, qword ptr [rsp + 464]
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
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n226_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:          mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n227_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 5584]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n228_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n229_subscript_α
.Lx577_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n229_subscript_α:       mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n232_lit_integer_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n230_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n230_deref_α:           mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n232_lit_integer_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n231_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn581:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn581]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n232_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n232_lit_integer_α
n231_call_builtin_icon_β:
                                                                              jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n233_assign_α
.Lx582_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n234_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n235_assign_α
.Lx584_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n236_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n236_swap_α:            mov              rax, qword ptr [rsp + 5552]
                        mov              rdx, qword ptr [rsp + 5560]
                        mov              rcx, qword ptr [rsp + 5568]
                        mov              rsi, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5552], rcx
                        mov              qword ptr [rsp + 5560], rsi
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                        mov              qword ptr [rsp + 208], rcx
                        mov              qword ptr [rsp + 216], rsi;          jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 200], rax;          jmp   n238_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn590:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn590]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n239_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_var_α
n238_call_builtin_icon_β:
                                                                              jmp   n239_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             mov              rax, qword ptr [r9 + 0]              # gcount
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 112], rax           # result
                        mov              qword ptr [rsp + 120], rdx;          jmp   n240_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n241_coerce_numeric_α
.Lx592_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n241_coerce_numeric_α:  mov              eax, dword ptr [rsp + 112]
                        cmp              al, 5;                               je    .Lx594_1
                        cmp              al, 3;                               jne   .Lx594_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx594_0
.Lx594_1:               mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax;          jmp   n242_binop_α
.Lx594_0:               lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n242_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           mov              eax, dword ptr [rsp + 96]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx595_2
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx595_7
.Lx595_2:               and              edx, 1;                              jz    .Lx595_0
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx595_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx595_4
.Lx595_3:               movq             xmm0, rsi
.Lx595_4:               cmp              cl, 5;                               je    .Lx595_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx595_6
.Lx595_5:               movq             xmm1, rdi
.Lx595_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx595_7:                                                                     jmp   n243_assign_α
.Lx595_0:               mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n244_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 0], rax              # gcount
                        mov              qword ptr [r9 + 8], rdx;             jmp   n244_var_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             mov              rax, qword ptr [r9 + 0]              # gcount
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n245_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn599:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn599]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n245_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # main__INITFLAG__0
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx;         jmp   n247_nulltest_var_α
n246_var_ref_β:                                                               jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n247_nulltest_var_α:    mov              eax, dword ptr [rsp + 5488]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 5488]
                        mov              rsi, qword ptr [rsp + 5496]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5504], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n248_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              qword ptr [rsp + 5536], 3            # result
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 5544], rax;         jmp   n249_assign_var_α
.Lx603_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_assign_var_α:      mov              rdi, qword ptr [rsp + 5504]
                        mov              rsi, qword ptr [rsp + 5512]
                        mov              rdx, qword ptr [rsp + 5536]
                        mov              rcx, qword ptr [rsp + 5544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx;         jmp   n250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     mov              qword ptr [rsp + 5472], 3            # result
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n251_assign_α
.Lx605_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:          mov              rax, qword ptr [rsp + 5472]
                        mov              rdx, qword ptr [rsp + 5480]
                        mov              qword ptr [r9 + 0], rax              # gcount
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n0_disjunction_as
n251_assign_β:                                                                jmp   n1_lit_integer_α
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "point(x,y)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
