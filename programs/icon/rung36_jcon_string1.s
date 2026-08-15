                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 6304
                        mov              qword ptr [rsp + 6280], rcx
                        mov              qword ptr [rsp + 6288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 6176], 2            # result
                        mov              dword ptr [rsp + 6180], 5
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 6184], rax;         jmp   n1_assign_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 6176]
                        mov              rdx, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 6096], 2            # result
                        mov              dword ptr [rsp + 6100], 5
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n3_var_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "type "
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6160], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6168], rax;         jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              rax, qword ptr [rsp + 6160]
                        mov              qword ptr [rsp + 6128], rax
                        mov              rax, qword ptr [rsp + 6168]
                        mov              qword ptr [rsp + 6136], rax
                        .section         .rodata
.Lrkfn254:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 6128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6112], rax
                        mov              qword ptr [rsp + 6120], rdx
                        cmp              eax, 104;                            je    n6_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_call_builtin_icon_α
n4_call_builtin_icon_β:                                                       jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 6112]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 6120]
                        mov              qword ptr [rsp + 6072], rax
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6056], rax
                        .section         .rodata
.Lrkfn256:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 6048]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6032], rax
                        mov              qword ptr [rsp + 6040], rdx
                        cmp              eax, 104;                            je    n6_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_icon_β:                                                       jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 5984], 2            # result
                        mov              dword ptr [rsp + 5988], 4
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 5992], rax;         jmp   n7_var_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "*s  "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6016], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6024], rax;         jmp   n8_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_unop_α:              mov              rdi, qword ptr [rsp + 6192]
                        mov              rsi, qword ptr [rsp + 6200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx;         jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 5984]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 5992]
                        mov              qword ptr [rsp + 5944], rax
                        .section         .rodata
.Lrkfn262:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 5936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              eax, 104;                            je    n10_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_lit_string_α
n9_call_builtin_icon_β:                                                       jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 5888], 2            # result
                        mov              dword ptr [rsp + 5892], 4
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n11_var_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "s:  "
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 5904], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5864], rax
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 5848], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rsp + 5840]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              eax, 104;                            je    n13_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_lit_string_α
n12_call_builtin_icon_β:
                                                                              jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              qword ptr [rsp + 5744], 2            # result
                        mov              dword ptr [rsp + 5748], 4
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 5752], rax;         jmp   n14_var_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "s:  "
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 5808], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 5816], rax;         jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5776], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5784], rax
                        .section         .rodata
.Lrkfn272:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rsp + 5776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5760], rax
                        mov              qword ptr [rsp + 5768], rdx
                        cmp              eax, 104;                            je    n17_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_call_builtin_icon_α
n15_call_builtin_icon_β:
                                                                              jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 5720], rax
                        mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 5696], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 5704], rax
                        .section         .rodata
.Lrkfn274:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rsp + 5696]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx
                        cmp              eax, 104;                            je    n17_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_disjunction_α
n16_call_builtin_icon_β:
                                                                              jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:      mov              qword ptr [rsp + 5568], 0
                        mov              qword ptr [rsp + 5576], 0
                        mov              dword ptr [rsp + 5584], 0;           jmp   n22_lit_string_α
n17_disjunction_as:     mov              eax, dword ptr [rsp + 5584]
                        cmp              eax, 0;                              jne   .Lx276_0
                        mov              rax, qword ptr [rsp + 5600]
                        mov              qword ptr [rsp + 5568], rax
                        mov              rax, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n18_call_builtin_icon_α
.Lx276_0:               cmp              eax, 1;                              jne   .Lx276_1
                        mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 5568], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n18_call_builtin_icon_α
.Lx276_1:               cmp              eax, 2;                              jne   .Lx276_2
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5568], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n18_call_builtin_icon_α
.Lx276_2:                                                                     jmp   n18_call_builtin_icon_α
n17_disjunction_β:      mov              eax, dword ptr [rsp + 5584]
                        cmp              eax, 0;                              je    n17_disjunction_af
                        cmp              eax, 1;                              je    n21_iterate_β
                                                                              jmp   n17_disjunction_af
n17_disjunction_af:     add              dword ptr [rsp + 5584], 1
                        mov              eax, dword ptr [rsp + 5584]
                        cmp              eax, 1;                              je    n20_var_α
                        cmp              eax, 2;                              je    n19_lit_string_α
                                                                              jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5544], rax
                        .section         .rodata
.Lrkfn278:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rsp + 5536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5520], rax
                        mov              qword ptr [rsp + 5528], rdx
                        cmp              eax, 104;                            je    n17_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_disjunction_β
n18_call_builtin_icon_β:
                                                                              jmp   n17_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 5664], 2            # result
                        mov              dword ptr [rsp + 5668], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 5672], rax;         jmp   n17_disjunction_as
n19_lit_string_β:                                                             jmp   n17_disjunction_af
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 5656], rax;         jmp   n21_iterate_α
n20_var_β:                                                                    jmp   n17_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_iterate_α:          mov              qword ptr [rsp + 5632], 0
.Lx283_0:               mov              rdi, qword ptr [rsp + 5648]
                        mov              rsi, qword ptr [rsp + 5656]
                        mov              rdx, qword ptr [rsp + 5632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx
                        cmp              rax, 104;                            je    n17_disjunction_af
                                                                              jmp   n17_disjunction_as
n21_iterate_β:          inc              qword ptr [rsp + 5632];              jmp   .Lx283_0
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 5600], 2            # result
                        mov              dword ptr [rsp + 5604], 4
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 5608], rax;         jmp   n17_disjunction_as
n22_lit_string_β:                                                             jmp   n17_disjunction_af
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "!:  "
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:      mov              qword ptr [rsp + 5344], 0
                        mov              qword ptr [rsp + 5352], 0
                        mov              dword ptr [rsp + 5360], 0;           jmp   n32_lit_string_α
n23_disjunction_as:     mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 0;                              jne   .Lx286_0
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n24_call_builtin_icon_α
.Lx286_0:               cmp              eax, 1;                              jne   .Lx286_1
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n24_call_builtin_icon_α
.Lx286_1:               cmp              eax, 2;                              jne   .Lx286_2
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n24_call_builtin_icon_α
.Lx286_2:                                                                     jmp   n24_call_builtin_icon_α
n23_disjunction_β:      mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 0;                              je    n23_disjunction_af
                        cmp              eax, 1;                              je    n29_to_β
                                                                              jmp   n23_disjunction_af
n23_disjunction_af:     add              dword ptr [rsp + 5360], 1
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 1;                              je    n26_var_ref_α
                        cmp              eax, 2;                              je    n25_lit_string_α
                                                                              jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5312], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5320], rax
                        .section         .rodata
.Lrkfn288:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 5312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx
                        cmp              eax, 104;                            je    n23_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_disjunction_β
n24_call_builtin_icon_β:
                                                                              jmp   n23_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              qword ptr [rsp + 5504], 2            # result
                        mov              dword ptr [rsp + 5508], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n23_disjunction_as
n25_lit_string_β:                                                             jmp   n23_disjunction_af
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6192]
                        mov              qword ptr [rsp + 5392], rax
                        mov              qword ptr [rsp + 5400], rdx;         jmp   n27_lit_integer_α
n26_var_ref_β:                                                                jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              qword ptr [rsp + 5440], 3            # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 5448], rax;         jmp   n28_lit_integer_α
.Lx292_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rsp + 5456], 3            # result
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n29_to_α
.Lx293_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n29_to_α:               mov              rdi, qword ptr [rsp + 5440]
                        mov              rsi, qword ptr [rsp + 5448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5440], 3
                        mov              qword ptr [rsp + 5448], rax
                        mov              rdi, qword ptr [rsp + 5456]
                        mov              rsi, qword ptr [rsp + 5464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5456], 3
                        mov              qword ptr [rsp + 5464], rax
                        mov              rax, qword ptr [rsp + 5448]
                        mov              qword ptr [rsp + 5424], rax
.Lx295_0:               mov              rax, qword ptr [rsp + 5424]
                        mov              rcx, qword ptr [rsp + 5464]
                        cmp              rax, rcx;                            jg    n23_disjunction_af
                        mov              qword ptr [rsp + 5408], 3
                        mov              qword ptr [rsp + 5416], rax;         jmp   n30_subscript_α
n29_to_β:               inc              qword ptr [rsp + 5424];              jmp   .Lx295_0
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              rdi, qword ptr [rsp + 5392]
                        mov              rsi, qword ptr [rsp + 5400]
                        mov              rdx, qword ptr [rsp + 5408]
                        mov              rcx, qword ptr [rsp + 5416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n29_to_β
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx;         jmp   n31_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_deref_α:            mov              rdi, qword ptr [rsp + 5472]
                        mov              rsi, qword ptr [rsp + 5480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n29_to_β
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx;         jmp   n23_disjunction_as
n31_deref_β:                                                                  jmp   n29_to_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              qword ptr [rsp + 5376], 2            # result
                        mov              dword ptr [rsp + 5380], 4
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 5384], rax;         jmp   n23_disjunction_as
n32_lit_string_β:                                                             jmp   n23_disjunction_af
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "1:  "
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              qword ptr [rsp + 5120], 0
                        mov              qword ptr [rsp + 5128], 0
                        mov              dword ptr [rsp + 5136], 0;           jmp   n42_lit_string_α
n33_disjunction_as:     mov              eax, dword ptr [rsp + 5136]
                        cmp              eax, 0;                              jne   .Lx300_0
                        mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n34_call_builtin_icon_α
.Lx300_0:               cmp              eax, 1;                              jne   .Lx300_1
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n34_call_builtin_icon_α
.Lx300_1:               cmp              eax, 2;                              jne   .Lx300_2
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n34_call_builtin_icon_α
.Lx300_2:                                                                     jmp   n34_call_builtin_icon_α
n33_disjunction_β:      mov              eax, dword ptr [rsp + 5136]
                        cmp              eax, 0;                              je    n33_disjunction_af
                        cmp              eax, 1;                              je    n39_to_β
                                                                              jmp   n33_disjunction_af
n33_disjunction_af:     add              dword ptr [rsp + 5136], 1
                        mov              eax, dword ptr [rsp + 5136]
                        cmp              eax, 1;                              je    n36_var_ref_α
                        cmp              eax, 2;                              je    n35_lit_string_α
                                                                              jmp   n43_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5096], rax
                        .section         .rodata
.Lrkfn302:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 5088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx
                        cmp              eax, 104;                            je    n33_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_disjunction_β
n34_call_builtin_icon_β:
                                                                              jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              qword ptr [rsp + 5280], 2            # result
                        mov              dword ptr [rsp + 5284], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n33_disjunction_as
n35_lit_string_β:                                                             jmp   n33_disjunction_af
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6192]
                        mov              qword ptr [rsp + 5168], rax
                        mov              qword ptr [rsp + 5176], rdx;         jmp   n37_lit_integer_α
n36_var_ref_β:                                                                jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              qword ptr [rsp + 5216], 3            # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n38_lit_integer_α
.Lx306_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              qword ptr [rsp + 5232], 3            # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n39_to_α
.Lx307_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n39_to_α:               mov              rdi, qword ptr [rsp + 5216]
                        mov              rsi, qword ptr [rsp + 5224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5216], 3
                        mov              qword ptr [rsp + 5224], rax
                        mov              rdi, qword ptr [rsp + 5232]
                        mov              rsi, qword ptr [rsp + 5240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5232], 3
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 5200], rax
.Lx309_0:               mov              rax, qword ptr [rsp + 5200]
                        mov              rcx, qword ptr [rsp + 5240]
                        cmp              rax, rcx;                            jg    n33_disjunction_af
                        mov              qword ptr [rsp + 5184], 3
                        mov              qword ptr [rsp + 5192], rax;         jmp   n40_subscript_α
n39_to_β:               inc              qword ptr [rsp + 5200];              jmp   .Lx309_0
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              rdi, qword ptr [rsp + 5168]
                        mov              rsi, qword ptr [rsp + 5176]
                        mov              rdx, qword ptr [rsp + 5184]
                        mov              rcx, qword ptr [rsp + 5192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n39_to_β
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx;         jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:            mov              rdi, qword ptr [rsp + 5248]
                        mov              rsi, qword ptr [rsp + 5256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n39_to_β
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n33_disjunction_as
n41_deref_β:                                                                  jmp   n39_to_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 5152], 2            # result
                        mov              dword ptr [rsp + 5156], 4
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 5160], rax;         jmp   n33_disjunction_as
n42_lit_string_β:                                                             jmp   n33_disjunction_af
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "0:  "
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:      mov              qword ptr [rsp + 4896], 0
                        mov              qword ptr [rsp + 4904], 0
                        mov              dword ptr [rsp + 4912], 0;           jmp   n52_lit_string_α
n43_disjunction_as:     mov              eax, dword ptr [rsp + 4912]
                        cmp              eax, 0;                              jne   .Lx314_0
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n44_call_builtin_icon_α
.Lx314_0:               cmp              eax, 1;                              jne   .Lx314_1
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n44_call_builtin_icon_α
.Lx314_1:               cmp              eax, 2;                              jne   .Lx314_2
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 4896], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n44_call_builtin_icon_α
.Lx314_2:                                                                     jmp   n44_call_builtin_icon_α
n43_disjunction_β:      mov              eax, dword ptr [rsp + 4912]
                        cmp              eax, 0;                              je    n43_disjunction_af
                        cmp              eax, 1;                              je    n49_to_β
                                                                              jmp   n43_disjunction_af
n43_disjunction_af:     add              dword ptr [rsp + 4912], 1
                        mov              eax, dword ptr [rsp + 4912]
                        cmp              eax, 1;                              je    n46_var_ref_α
                        cmp              eax, 2;                              je    n45_lit_string_α
                                                                              jmp   n53_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4872], rax
                        .section         .rodata
.Lrkfn316:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rsp + 4864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx
                        cmp              eax, 104;                            je    n43_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_disjunction_β
n44_call_builtin_icon_β:
                                                                              jmp   n43_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 5056], 2            # result
                        mov              dword ptr [rsp + 5060], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 5064], rax;         jmp   n43_disjunction_as
n45_lit_string_β:                                                             jmp   n43_disjunction_af
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6192]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n47_lit_integer_α
n46_var_ref_β:                                                                jmp   n43_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              qword ptr [rsp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n48_lit_integer_α
.Lx320_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n49_to_α
.Lx321_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n49_to_α:               mov              rdi, qword ptr [rsp + 4992]
                        mov              rsi, qword ptr [rsp + 5000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4992], 3
                        mov              qword ptr [rsp + 5000], rax
                        mov              rdi, qword ptr [rsp + 5008]
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
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4976], rax
.Lx323_0:               mov              rax, qword ptr [rsp + 4976]
                        mov              rcx, qword ptr [rsp + 5016]
                        cmp              rax, rcx;                            jg    n43_disjunction_af
                        mov              qword ptr [rsp + 4960], 3
                        mov              qword ptr [rsp + 4968], rax;         jmp   n50_subscript_α
n49_to_β:               inc              qword ptr [rsp + 4976];              jmp   .Lx323_0
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rsp + 4944]
                        mov              rsi, qword ptr [rsp + 4952]
                        mov              rdx, qword ptr [rsp + 4960]
                        mov              rcx, qword ptr [rsp + 4968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n49_to_β
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx;         jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              rdi, qword ptr [rsp + 5024]
                        mov              rsi, qword ptr [rsp + 5032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n49_to_β
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx;         jmp   n43_disjunction_as
n51_deref_β:                                                                  jmp   n49_to_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 4928], 2            # result
                        mov              dword ptr [rsp + 4932], 4
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 4936], rax;         jmp   n43_disjunction_as
n52_lit_string_β:                                                             jmp   n43_disjunction_af
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          "-5: "
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              qword ptr [rsp + 4672], 0
                        mov              qword ptr [rsp + 4680], 0
                        mov              dword ptr [rsp + 4688], 0;           jmp   n62_lit_string_α
n53_disjunction_as:     mov              eax, dword ptr [rsp + 4688]
                        cmp              eax, 0;                              jne   .Lx328_0
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n54_call_builtin_icon_α
.Lx328_0:               cmp              eax, 1;                              jne   .Lx328_1
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n54_call_builtin_icon_α
.Lx328_1:               cmp              eax, 2;                              jne   .Lx328_2
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n54_call_builtin_icon_α
.Lx328_2:                                                                     jmp   n54_call_builtin_icon_α
n53_disjunction_β:      mov              eax, dword ptr [rsp + 4688]
                        cmp              eax, 0;                              je    n53_disjunction_af
                        cmp              eax, 1;                              je    n59_to_β
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     add              dword ptr [rsp + 4688], 1
                        mov              eax, dword ptr [rsp + 4688]
                        cmp              eax, 1;                              je    n56_var_ref_α
                        cmp              eax, 2;                              je    n55_lit_string_α
                                                                              jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4648], rax
                        .section         .rodata
.Lrkfn330:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rsp + 4640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx
                        cmp              eax, 104;                            je    n53_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_disjunction_β
n54_call_builtin_icon_β:
                                                                              jmp   n53_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 4832], 2            # result
                        mov              dword ptr [rsp + 4836], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n53_disjunction_as
n55_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6192]
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx;         jmp   n57_lit_integer_α
n56_var_ref_β:                                                                jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              qword ptr [rsp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n58_lit_integer_α
.Lx334_0:               .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              qword ptr [rsp + 4784], 3            # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n59_to_α
.Lx335_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n59_to_α:               mov              rdi, qword ptr [rsp + 4768]
                        mov              rsi, qword ptr [rsp + 4776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4768], 3
                        mov              qword ptr [rsp + 4776], rax
                        mov              rdi, qword ptr [rsp + 4784]
                        mov              rsi, qword ptr [rsp + 4792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4784], 3
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4752], rax
.Lx337_0:               mov              rax, qword ptr [rsp + 4752]
                        mov              rcx, qword ptr [rsp + 4792]
                        cmp              rax, rcx;                            jg    n53_disjunction_af
                        mov              qword ptr [rsp + 4736], 3
                        mov              qword ptr [rsp + 4744], rax;         jmp   n60_subscript_α
n59_to_β:               inc              qword ptr [rsp + 4752];              jmp   .Lx337_0
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:        mov              rdi, qword ptr [rsp + 4720]
                        mov              rsi, qword ptr [rsp + 4728]
                        mov              rdx, qword ptr [rsp + 4736]
                        mov              rcx, qword ptr [rsp + 4744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n59_to_β
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx;         jmp   n61_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:            mov              rdi, qword ptr [rsp + 4800]
                        mov              rsi, qword ptr [rsp + 4808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n59_to_β
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx;         jmp   n53_disjunction_as
n61_deref_β:                                                                  jmp   n59_to_β
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 4704], 2            # result
                        mov              dword ptr [rsp + 4708], 4
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n53_disjunction_as
n62_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "-7: "
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 4
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n64_var_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "s1: "
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 4576], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rsp + 4592], 3            # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n66_lit_integer_α
.Lx344_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      mov              qword ptr [rsp + 4608], 3            # result
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 4616], rax;         jmp   n67_subscript_α
.Lx345_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:        mov              rdi, qword ptr [rsp + 4576]
                        mov              rsi, qword ptr [rsp + 4584]
                        mov              rdx, qword ptr [rsp + 4592]
                        mov              rcx, qword ptr [rsp + 4600]
                        mov              r8, qword ptr [rsp + 4608]
                        mov              r9, qword ptr [rsp + 4616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n69_lit_string_α
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx;         jmp   n68_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4520], rax
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4504], rax
                        .section         .rodata
.Lrkfn348:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rsp + 4496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx
                        cmp              eax, 104;                            je    n69_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_lit_string_α
n68_call_builtin_icon_β:
                                                                              jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 4384], 2            # result
                        mov              dword ptr [rsp + 4388], 4
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n70_var_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "s2: "
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 4424], rax;         jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              qword ptr [rsp + 4432], 3            # result
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n72_lit_integer_α
.Lx352_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rsp + 4448], 3            # result
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n73_binop_α
.Lx353_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            mov              rdi, qword ptr [rsp + 4432]
                        mov              rsi, qword ptr [rsp + 4440]
                        mov              rdx, qword ptr [rsp + 4448]
                        mov              rcx, qword ptr [rsp + 4456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n76_lit_string_α
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:        mov              rdi, qword ptr [rsp + 4416]
                        mov              rsi, qword ptr [rsp + 4424]
                        mov              rdx, qword ptr [rsp + 4432]
                        mov              rcx, qword ptr [rsp + 4440]
                        mov              r8, qword ptr [rsp + 4464]
                        mov              r9, qword ptr [rsp + 4472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n76_lit_string_α
                        mov              qword ptr [rsp + 4400], rax
                        mov              qword ptr [rsp + 4408], rdx;         jmp   n75_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4360], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4344], rax
                        .section         .rodata
.Lrkfn357:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rsp + 4336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx
                        cmp              eax, 104;                            je    n76_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_lit_string_α
n75_call_builtin_icon_β:
                                                                              jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 4
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n77_var_α
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          "s3: "
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              qword ptr [rsp + 4272], 3            # result
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n79_lit_integer_α
.Lx361_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              qword ptr [rsp + 4288], 3            # result
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n80_binop_α
.Lx362_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            mov              rdi, qword ptr [rsp + 4272]
                        mov              rsi, qword ptr [rsp + 4280]
                        mov              rdx, qword ptr [rsp + 4288]
                        mov              rcx, qword ptr [rsp + 4296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n83_lit_string_α
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:        mov              rdi, qword ptr [rsp + 4256]
                        mov              rsi, qword ptr [rsp + 4264]
                        mov              rdx, qword ptr [rsp + 4272]
                        mov              rcx, qword ptr [rsp + 4280]
                        mov              r8, qword ptr [rsp + 4304]
                        mov              r9, qword ptr [rsp + 4312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n83_lit_string_α
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n82_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4184], rax
                        .section         .rodata
.Lrkfn366:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rsp + 4176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104;                            je    n83_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_lit_string_α
n82_call_builtin_icon_β:
                                                                              jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 4080], 2            # result
                        mov              dword ptr [rsp + 4084], 4
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n84_var_α
.Lx367_0:               .quad            .Lx367_0_s
.Lx367_0_s:             .string          "s4: "
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rsp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n86_lit_integer_α
.Lx370_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n87_subscript_α
.Lx371_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n87_subscript_α:        mov              rdi, qword ptr [rsp + 4112]
                        mov              rsi, qword ptr [rsp + 4120]
                        mov              rdx, qword ptr [rsp + 4128]
                        mov              rcx, qword ptr [rsp + 4136]
                        mov              r8, qword ptr [rsp + 4144]
                        mov              r9, qword ptr [rsp + 4152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n89_lit_string_α
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx;         jmp   n88_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4040], rax
                        .section         .rodata
.Lrkfn374:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rsp + 4032]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              eax, 104;                            je    n89_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_lit_string_α
n88_call_builtin_icon_β:
                                                                              jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              qword ptr [rsp + 3936], 2            # result
                        mov              dword ptr [rsp + 3940], 4
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n90_var_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "s5: "
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              qword ptr [rsp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n92_lit_integer_α
.Lx378_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              qword ptr [rsp + 4000], 3            # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n93_subscript_α
.Lx379_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:        mov              rdi, qword ptr [rsp + 3968]
                        mov              rsi, qword ptr [rsp + 3976]
                        mov              rdx, qword ptr [rsp + 3984]
                        mov              rcx, qword ptr [rsp + 3992]
                        mov              r8, qword ptr [rsp + 4000]
                        mov              r9, qword ptr [rsp + 4008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n95_lit_string_α
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n94_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3896], rax
                        .section         .rodata
.Lrkfn382:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rsp + 3888]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              eax, 104;                            je    n95_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_lit_string_α
n94_call_builtin_icon_β:
                                                                              jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 4
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n96_var_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "s6: "
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n97_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              qword ptr [rsp + 3840], 3            # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 3848], rax;         jmp   n98_lit_integer_α
.Lx386_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              qword ptr [rsp + 3856], 3            # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n99_subscript_α
.Lx387_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n99_subscript_α:        mov              rdi, qword ptr [rsp + 3824]
                        mov              rsi, qword ptr [rsp + 3832]
                        mov              rdx, qword ptr [rsp + 3840]
                        mov              rcx, qword ptr [rsp + 3848]
                        mov              r8, qword ptr [rsp + 3856]
                        mov              r9, qword ptr [rsp + 3864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n101_lit_string_α
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx;         jmp   n100_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3768], rax
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3752], rax
                        .section         .rodata
.Lrkfn390:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn390]
                        lea              rsi, [rsp + 3744]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        cmp              eax, 104;                            je    n101_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n101_lit_string_α
n100_call_builtin_icon_β:
                                                                              jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              qword ptr [rsp + 3648], 2            # result
                        mov              dword ptr [rsp + 3652], 4
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n102_var_α
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "s7: "
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              qword ptr [rsp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n104_lit_integer_α
.Lx394_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n105_subscript_α
.Lx395_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n105_subscript_α:       mov              rdi, qword ptr [rsp + 3680]
                        mov              rsi, qword ptr [rsp + 3688]
                        mov              rdx, qword ptr [rsp + 3696]
                        mov              rcx, qword ptr [rsp + 3704]
                        mov              r8, qword ptr [rsp + 3712]
                        mov              r9, qword ptr [rsp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n107_lit_string_α
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3608], rax
                        .section         .rodata
.Lrkfn398:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn398]
                        lea              rsi, [rsp + 3600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 104;                            je    n107_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                                                                              jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 4
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n108_var_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "s8: "
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n109_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n110_lit_integer_α
.Lx402_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     mov              qword ptr [rsp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n111_subscript_α
.Lx403_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n111_subscript_α:       mov              rdi, qword ptr [rsp + 3536]
                        mov              rsi, qword ptr [rsp + 3544]
                        mov              rdx, qword ptr [rsp + 3552]
                        mov              rcx, qword ptr [rsp + 3560]
                        mov              r8, qword ptr [rsp + 3568]
                        mov              r9, qword ptr [rsp + 3576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n113_lit_string_α
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n112_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3464], rax
                        .section         .rodata
.Lrkfn406:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rsp + 3456]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              eax, 104;                            je    n113_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_lit_string_α
n112_call_builtin_icon_β:
                                                                              jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 3360], 2            # result
                        mov              dword ptr [rsp + 3364], 4
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n114_var_α
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "s9: "
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              qword ptr [rsp + 3408], 3            # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n116_lit_integer_α
.Lx410_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     mov              qword ptr [rsp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n117_subscript_α
.Lx411_0:               .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n117_subscript_α:       mov              rdi, qword ptr [rsp + 3392]
                        mov              rsi, qword ptr [rsp + 3400]
                        mov              rdx, qword ptr [rsp + 3408]
                        mov              rcx, qword ptr [rsp + 3416]
                        mov              r8, qword ptr [rsp + 3424]
                        mov              r9, qword ptr [rsp + 3432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n119_lit_string_α
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n118_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn414:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104;                            je    n119_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_lit_string_α
n118_call_builtin_icon_β:
                                                                              jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 4
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n120_lit_string_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "k1: "
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              qword ptr [rsp + 3248], 2            # result
                        mov              dword ptr [rsp + 3252], 5
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n121_lit_integer_α
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              qword ptr [rsp + 3264], 3            # result
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n122_lit_integer_α
.Lx417_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:     mov              qword ptr [rsp + 3280], 3            # result
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n123_subscript_α
.Lx418_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n123_subscript_α:       mov              rdi, qword ptr [rsp + 3248]
                        mov              rsi, qword ptr [rsp + 3256]
                        mov              rdx, qword ptr [rsp + 3264]
                        mov              rcx, qword ptr [rsp + 3272]
                        mov              r8, qword ptr [rsp + 3280]
                        mov              r9, qword ptr [rsp + 3288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n125_lit_string_α
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx;         jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3192], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn421:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              eax, 104;                            je    n125_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_lit_string_α
n124_call_builtin_icon_β:
                                                                              jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 4
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n126_lit_string_α
.Lx422_0:               .quad            .Lx422_0_s
.Lx422_0_s:             .string          "k2: "
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n127_lit_integer_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n128_lit_integer_α
.Lx424_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     mov              qword ptr [rsp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n129_binop_α
.Lx425_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:           mov              rdi, qword ptr [rsp + 3104]
                        mov              rsi, qword ptr [rsp + 3112]
                        mov              rdx, qword ptr [rsp + 3120]
                        mov              rcx, qword ptr [rsp + 3128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n132_lit_string_α
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n130_subscript_α:       mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              rdx, qword ptr [rsp + 3104]
                        mov              rcx, qword ptr [rsp + 3112]
                        mov              r8, qword ptr [rsp + 3136]
                        mov              r9, qword ptr [rsp + 3144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n132_lit_string_α
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n131_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax
                        .section         .rodata
.Lrkfn429:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rsp + 3008]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n132_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_lit_string_α
n131_call_builtin_icon_β:
                                                                              jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 4
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n133_lit_string_α
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "k3: "
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 5
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n134_lit_integer_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     mov              qword ptr [rsp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n135_lit_integer_α
.Lx432_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              qword ptr [rsp + 2960], 3            # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n136_binop_α
.Lx433_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           mov              rdi, qword ptr [rsp + 2944]
                        mov              rsi, qword ptr [rsp + 2952]
                        mov              rdx, qword ptr [rsp + 2960]
                        mov              rcx, qword ptr [rsp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n139_lit_string_α
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n137_subscript_α:       mov              rdi, qword ptr [rsp + 2928]
                        mov              rsi, qword ptr [rsp + 2936]
                        mov              rdx, qword ptr [rsp + 2944]
                        mov              rcx, qword ptr [rsp + 2952]
                        mov              r8, qword ptr [rsp + 2976]
                        mov              r9, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n139_lit_string_α
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2856], rax
                        .section         .rodata
.Lrkfn437:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn437]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104;                            je    n139_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_lit_string_α
n138_call_builtin_icon_β:
                                                                              jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 4
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n140_lit_string_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "k4: "
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 5
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n141_lit_integer_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n142_lit_integer_α
.Lx440_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              qword ptr [rsp + 2816], 3            # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n143_subscript_α
.Lx441_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n143_subscript_α:       mov              rdi, qword ptr [rsp + 2784]
                        mov              rsi, qword ptr [rsp + 2792]
                        mov              rdx, qword ptr [rsp + 2800]
                        mov              rcx, qword ptr [rsp + 2808]
                        mov              r8, qword ptr [rsp + 2816]
                        mov              r9, qword ptr [rsp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n145_lit_string_α
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn444:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              eax, 104;                            je    n145_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_lit_string_α
n144_call_builtin_icon_β:
                                                                              jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 4
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n146_lit_string_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "k5: "
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 5
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n147_lit_integer_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n148_lit_integer_α
.Lx447_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n149_subscript_α
.Lx448_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n149_subscript_α:       mov              rdi, qword ptr [rsp + 2640]
                        mov              rsi, qword ptr [rsp + 2648]
                        mov              rdx, qword ptr [rsp + 2656]
                        mov              rcx, qword ptr [rsp + 2664]
                        mov              r8, qword ptr [rsp + 2672]
                        mov              r9, qword ptr [rsp + 2680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n151_lit_string_α
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n150_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn451:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              eax, 104;                            je    n151_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_lit_string_α
n150_call_builtin_icon_β:
                                                                              jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 4
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n152_lit_string_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "k6: "
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              qword ptr [rsp + 2496], 2            # result
                        mov              dword ptr [rsp + 2500], 5
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n153_lit_integer_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n154_lit_integer_α
.Lx454_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n155_subscript_α
.Lx455_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n155_subscript_α:       mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              rdx, qword ptr [rsp + 2512]
                        mov              rcx, qword ptr [rsp + 2520]
                        mov              r8, qword ptr [rsp + 2528]
                        mov              r9, qword ptr [rsp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n157_lit_string_α
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn458:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 104;                            je    n157_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_lit_string_α
n156_call_builtin_icon_β:
                                                                              jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 4
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n158_lit_string_α
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          "k7: "
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 5
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n159_lit_integer_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              qword ptr [rsp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n160_lit_integer_α
.Lx461_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n161_subscript_α
.Lx462_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n161_subscript_α:       mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              rdx, qword ptr [rsp + 2368]
                        mov              rcx, qword ptr [rsp + 2376]
                        mov              r8, qword ptr [rsp + 2384]
                        mov              r9, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n163_lit_string_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn465:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104;                            je    n163_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_lit_string_α
n162_call_builtin_icon_β:
                                                                              jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 4
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n164_lit_string_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "k8: "
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 5
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n165_lit_integer_α
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              qword ptr [rsp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n166_lit_integer_α
.Lx468_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n167_subscript_α
.Lx469_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n167_subscript_α:       mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
                        mov              rdx, qword ptr [rsp + 2224]
                        mov              rcx, qword ptr [rsp + 2232]
                        mov              r8, qword ptr [rsp + 2240]
                        mov              r9, qword ptr [rsp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n169_lit_string_α
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n168_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        .section         .rodata
.Lrkfn472:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rsp + 2128]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              eax, 104;                            je    n169_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                              jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 4
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n170_lit_string_α
.Lx473_0:               .quad            .Lx473_0_s
.Lx473_0_s:             .string          "k9: "
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 5
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n171_lit_integer_α
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n172_lit_integer_α
.Lx475_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n173_subscript_α
.Lx476_0:               .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n173_subscript_α:       mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              r8, qword ptr [rsp + 2096]
                        mov              r9, qword ptr [rsp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n175_lit_string_α
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n174_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn479:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn479]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104;                            je    n175_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_lit_string_α
n174_call_builtin_icon_β:
                                                                              jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 3
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n176_lit_string_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 2
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n177_binop_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "de"
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_α:           mov              rdi, qword ptr [rsp + 1936]
                        mov              rsi, qword ptr [rsp + 1944]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n178_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:          mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 6208], rax
                        mov              qword ptr [rsp + 6216], rdx;         jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 4
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n180_var_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "t:  "
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn488:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 104;                            je    n183_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_call_builtin_icon_α
n181_call_builtin_icon_β:
                                                                              jmp   n183_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn490:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn490]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              eax, 104;                            je    n183_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_disjunction_α
n182_call_builtin_icon_β:
                                                                              jmp   n183_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n183_disjunction_α:     mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              dword ptr [rsp + 1632], 0;           jmp   n245_var_α
n183_disjunction_as:    mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 0;                              jne   .Lx492_0
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n184_var_α
.Lx492_0:               cmp              eax, 1;                              jne   .Lx492_1
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n184_var_α
.Lx492_1:                                                                     jmp   n184_var_α
n183_disjunction_β:     mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 0;                              je    n183_disjunction_af
                                                                              jmp   n183_disjunction_af
n183_disjunction_af:    add              dword ptr [rsp + 1632], 1
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 1;                              je    n243_lit_string_α
                                                                              jmp   n184_var_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n186_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_test_α:      mov              rdi, qword ptr [rsp + 6192]
                        mov              rsi, qword ptr [rsp + 6200]
                        mov              rdx, qword ptr [rsp + 6208]
                        mov              rcx, qword ptr [rsp + 6216]
                        mov              r8d, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n190_lit_string_α
                        mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 8
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n188_call_builtin_icon_α
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "are ~==="
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn500:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104;                            je    n190_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_conjunction_α
n188_call_builtin_icon_β:
                                                                              jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_conjunction_α:     mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n190_lit_string_α
n189_conjunction_β:                                                           jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 5
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n191_lit_string_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "?x:  "
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n192_random_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n192_random_α:          mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n195_lit_string_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n193_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n193_deref_α:           mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n195_lit_string_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n194_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn507:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn507]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104;                            je    n195_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_lit_string_α
n194_call_builtin_icon_β:
                                                                              jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 5
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n196_lit_string_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "?y:  "
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 11
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n197_random_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "yyyyyyyyyyy"
#-----------------------------------------------------------------------------------------------------------------------
n197_random_α:          mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n200_lit_string_α
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n198_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_deref_α:           mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n200_lit_string_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n199_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn513:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn513]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 104;                            je    n200_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_lit_string_α
n199_call_builtin_icon_β:
                                                                              jmp   n200_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 5
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n201_disjunction_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "?z:  "
#-----------------------------------------------------------------------------------------------------------------------
n201_disjunction_α:     mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              dword ptr [rsp + 1152], 0;           jmp   n240_lit_string_α
n201_disjunction_as:    mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              jne   .Lx516_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n202_call_builtin_icon_α
.Lx516_0:               cmp              eax, 1;                              jne   .Lx516_1
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n202_call_builtin_icon_α
.Lx516_1:                                                                     jmp   n202_call_builtin_icon_α
n201_disjunction_β:     mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              je    n201_disjunction_af
                                                                              jmp   n201_disjunction_af
n201_disjunction_af:    add              dword ptr [rsp + 1152], 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 1;                              je    n239_lit_string_α
                                                                              jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn518:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n201_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_lit_string_α
n202_call_builtin_icon_β:
                                                                              jmp   n201_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 4
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n204_lit_string_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "c1: "
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 0
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n205_lit_string_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 0
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n206_binop_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:           mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn524:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn524]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n209_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_call_builtin_icon_α
n207_call_builtin_icon_β:
                                                                              jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn526:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rsp + 896]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n209_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_lit_string_α
n208_call_builtin_icon_β:
                                                                              jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 4
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n210_lit_string_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "c2: "
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n211_lit_string_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 0
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n212_binop_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n212_binop_α:           mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn532:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn532]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n215_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_call_builtin_icon_α
n213_call_builtin_icon_β:
                                                                              jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn534:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn534]
                        lea              rsi, [rsp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n215_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n215_lit_string_α
n214_call_builtin_icon_β:
                                                                              jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 4
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n216_lit_string_α
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "c3: "
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 0
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n217_lit_string_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n218_binop_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n218_binop_α:           mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n219_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn540:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n221_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n220_call_builtin_icon_α
n219_call_builtin_icon_β:
                                                                              jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn542:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n221_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_lit_string_α
n220_call_builtin_icon_β:
                                                                              jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 4
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n222_lit_string_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "c4: "
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 2
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n223_lit_string_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 2
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n224_binop_α
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "ef"
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:           mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn548:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn548]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n227_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_call_builtin_icon_α
n225_call_builtin_icon_β:
                                                                              jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn550:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn550]
                        lea              rsi, [rsp + 368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n227_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_lit_string_α
n226_call_builtin_icon_β:
                                                                              jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 4
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n228_lit_real_α
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "c5: "
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_real_α:        mov              qword ptr [rsp + 320], 5             # result
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n229_lit_integer_α
.Lx552_0:               .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n230_binop_α
.Lx553_0:               .quad            159
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn556:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n233_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_call_builtin_icon_α
n231_call_builtin_icon_β:
                                                                              jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn558:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n233_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_lit_string_α
n232_call_builtin_icon_β:
                                                                              jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 4
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n234_lit_charset_α
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "c6: "
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_charset_α:     mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], -1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n235_lit_charset_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_charset_α:     mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], -1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n236_binop_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "def"
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn564:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_call_builtin_icon_α
n237_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn566:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn566]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
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
n238_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 4
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n201_disjunction_as
n239_lit_string_β:                                                            jmp   n201_disjunction_af
.Lx567_0:               .quad            .Lx567_0_s
.Lx567_0_s:             .string          "nope"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 0
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n241_random_α
n240_lit_string_β:                                                            jmp   n201_disjunction_af
.Lx568_0:               .quad            .Lx568_0_s
.Lx568_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n241_random_α:          mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n201_disjunction_af
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n242_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n242_deref_α:           mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n201_disjunction_af
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n201_disjunction_as
n242_deref_β:                                                                 jmp   n201_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 7
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n244_call_builtin_icon_α
n243_lit_string_β:                                                            jmp   n183_disjunction_af
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "not ==="
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn573:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn573]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104;                            je    n183_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_disjunction_as
n244_call_builtin_icon_β:
                                                                              jmp   n183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:             mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n246_var_α
n245_var_β:                                                                   jmp   n183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n247_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_test_α:      mov              rdi, qword ptr [rsp + 6192]
                        mov              rsi, qword ptr [rsp + 6200]
                        mov              rdx, qword ptr [rsp + 6208]
                        mov              rcx, qword ptr [rsp + 6216]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n183_disjunction_af
                        mov              rax, qword ptr [rsp + 6208]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 6216]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n183_disjunction_as
n247_binop_test_β:                                                            jmp   n183_disjunction_af
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
