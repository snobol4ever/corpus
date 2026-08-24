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
                        sub              rsp, 6048
                        mov              rdi, rsp
                        add              rdi, 5936
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 5920], 2            # result
                        mov              dword ptr [rsp + 5924], 5
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 5928], rax;         jmp   n1_assign_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 5920]
                        mov              rdx, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5936], rax
                        mov              qword ptr [rsp + 5944], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 5840], 2            # result
                        mov              dword ptr [rsp + 5844], 5
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 5848], rax;         jmp   n3_var_α
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          "type "
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5904], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              r11, 5
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5880], rax
                        .section         .rodata
.Lrkfn238:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rsp + 5872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx
                        cmp              al, 104;                             je    n6_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_call_builtin_icon_α
n4_call_builtin_icon_β: mov              r11, 5;                              jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5808], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5816], rax
                        mov              rax, qword ptr [rsp + 5840]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 5848]
                        mov              qword ptr [rsp + 5800], rax
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 5792]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx
                        cmp              al, 104;                             je    n6_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 5728], 2            # result
                        mov              dword ptr [rsp + 5732], 4
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 5736], rax;         jmp   n7_var_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "*s  "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5760], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5768], rax;         jmp   n8_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_unop_α:              mov              r11, 9
                        mov              rdi, qword ptr [rsp + 5936]
                        mov              rsi, qword ptr [rsp + 5944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx;         jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 5744]
                        mov              qword ptr [rsp + 5696], rax
                        mov              rax, qword ptr [rsp + 5752]
                        mov              qword ptr [rsp + 5704], rax
                        mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 5688], rax
                        .section         .rodata
.Lrkfn246:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rsp + 5680]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx
                        cmp              al, 104;                             je    n10_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_lit_string_α
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 5632], 2            # result
                        mov              dword ptr [rsp + 5636], 4
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 5640], rax;         jmp   n11_var_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "s:  "
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5648], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5656], rax;         jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5608], rax
                        mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5592], rax
                        .section         .rodata
.Lrkfn251:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rsp + 5584]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                        cmp              al, 104;                             je    n13_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_lit_string_α
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 5488], 2            # result
                        mov              dword ptr [rsp + 5492], 4
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n14_var_α
.Lx252_0:               .quad            .Lx252_0_s
.Lx252_0_s:             .string          "s:  "
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5520], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5528], rax
                        .section         .rodata
.Lrkfn256:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 5520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx
                        cmp              al, 104;                             je    n17_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_call_builtin_icon_α
n15_call_builtin_icon_β:
                        mov              r11, 16;                             jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5464], rax
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5448], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 5440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              al, 104;                             je    n17_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_disjunction_α
n16_call_builtin_icon_β:
                        mov              r11, 17;                             jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 5328], 0;           jmp   n22_lit_string_α
n17_disjunction_as:     mov              r11, 18
                        mov              eax, dword ptr [rsp + 5328]
                        cmp              eax, 0;                              jne   .Lx260_0
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_call_builtin_icon_α
.Lx260_0:               cmp              eax, 1;                              jne   .Lx260_1
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_call_builtin_icon_α
.Lx260_1:               cmp              eax, 2;                              jne   .Lx260_2
                        mov              rax, qword ptr [rsp + 5408]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5416]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_call_builtin_icon_α
.Lx260_2:                                                                     jmp   n18_call_builtin_icon_α
n17_disjunction_β:      mov              r11, 18
                        mov              eax, dword ptr [rsp + 5328]
                        cmp              eax, 0;                              je    n17_disjunction_af
                        cmp              eax, 1;                              je    n21_iterate_β
                                                                              jmp   n17_disjunction_af
n17_disjunction_af:     mov              r11, 18
                        add              dword ptr [rsp + 5328], 1
                        mov              eax, dword ptr [rsp + 5328]
                        cmp              eax, 1;                              je    n20_var_α
                        cmp              eax, 2;                              je    n19_lit_string_α
                        add              rsp, 16;                             jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 5312]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 5288], rax
                        .section         .rodata
.Lrkfn262:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 5280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              al, 104;                             je    n17_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_disjunction_β
n18_call_builtin_icon_β:
                        mov              r11, 19;                             jmp   n17_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 5408], 2            # result
                        mov              dword ptr [rsp + 5412], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n17_disjunction_as
n19_lit_string_β:       mov              r11, 20;                             jmp   n17_disjunction_af
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5400], rax;         jmp   n21_iterate_α
n20_var_β:              mov              r11, 21;                             jmp   n17_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_iterate_α:          mov              r11, 22
                        mov              qword ptr [rsp + 5376], 0
.Lx267_0:               mov              rdi, qword ptr [rsp + 5392]
                        mov              rsi, qword ptr [rsp + 5400]
                        mov              rdx, qword ptr [rsp + 5376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5360], rax
                        mov              qword ptr [rsp + 5368], rdx
                        cmp              rax, 104;                            je    n17_disjunction_af
                                                                              jmp   n17_disjunction_as
n21_iterate_β:          mov              r11, 22
                        inc              qword ptr [rsp + 5376];              jmp   .Lx267_0
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 5344], 2            # result
                        mov              dword ptr [rsp + 5348], 4
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n17_disjunction_as
n22_lit_string_β:       mov              r11, 23;                             jmp   n17_disjunction_af
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "!:  "
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 5104], 0;           jmp   n32_lit_string_α
n23_disjunction_as:     mov              r11, 24
                        mov              eax, dword ptr [rsp + 5104]
                        cmp              eax, 0;                              jne   .Lx270_0
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_call_builtin_icon_α
.Lx270_0:               cmp              eax, 1;                              jne   .Lx270_1
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_call_builtin_icon_α
.Lx270_1:               cmp              eax, 2;                              jne   .Lx270_2
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_call_builtin_icon_α
.Lx270_2:                                                                     jmp   n24_call_builtin_icon_α
n23_disjunction_β:      mov              r11, 24
                        mov              eax, dword ptr [rsp + 5104]
                        cmp              eax, 0;                              je    n23_disjunction_af
                        cmp              eax, 1;                              je    n29_to_β
                                                                              jmp   n23_disjunction_af
n23_disjunction_af:     mov              r11, 24
                        add              dword ptr [rsp + 5104], 1
                        mov              eax, dword ptr [rsp + 5104]
                        cmp              eax, 1;                              je    n26_var_ref_α
                        cmp              eax, 2;                              je    n25_lit_string_α
                        add              rsp, 16;                             jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5064], rax
                        .section         .rodata
.Lrkfn272:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rsp + 5056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 5040], rax
                        mov              qword ptr [rsp + 5048], rdx
                        cmp              al, 104;                             je    n23_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_disjunction_β
n24_call_builtin_icon_β:
                        mov              r11, 25;                             jmp   n23_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 5248], 2            # result
                        mov              dword ptr [rsp + 5252], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n23_disjunction_as
n25_lit_string_β:       mov              r11, 26;                             jmp   n23_disjunction_af
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5936]
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx;         jmp   n27_lit_integer_α
n26_var_ref_β:          mov              r11, 27;                             jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 28
                        mov              qword ptr [rsp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n28_lit_integer_α
.Lx276_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 5200], 3            # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 5208], rax;         jmp   n29_to_α
.Lx277_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n29_to_α:               mov              r11, 30
                        mov              rdi, qword ptr [rsp + 5184]
                        mov              rsi, qword ptr [rsp + 5192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5184], 3
                        mov              qword ptr [rsp + 5192], rax
                        mov              rdi, qword ptr [rsp + 5200]
                        mov              rsi, qword ptr [rsp + 5208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5200], 3
                        mov              qword ptr [rsp + 5208], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5168], rax
.Lx279_0:               mov              rax, qword ptr [rsp + 5168]
                        mov              rcx, qword ptr [rsp + 5208]
                        cmp              rax, rcx;                            jg    n23_disjunction_af
                        mov              qword ptr [rsp + 5152], 3
                        mov              qword ptr [rsp + 5160], rax;         jmp   n30_subscript_α
n29_to_β:               mov              r11, 30
                        inc              qword ptr [rsp + 5168];              jmp   .Lx279_0
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              r11, 31
                        mov              rdi, qword ptr [rsp + 5136]
                        mov              rsi, qword ptr [rsp + 5144]
                        mov              rdx, qword ptr [rsp + 5152]
                        mov              rcx, qword ptr [rsp + 5160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n29_to_β
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx;         jmp   n31_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_deref_α:            mov              r11, 32
                        mov              rdi, qword ptr [rsp + 5216]
                        mov              rsi, qword ptr [rsp + 5224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n29_to_β
                        mov              qword ptr [rsp + 5232], rax
                        mov              qword ptr [rsp + 5240], rdx;         jmp   n23_disjunction_as
n31_deref_β:            mov              r11, 32;                             jmp   n29_to_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 5120], 2            # result
                        mov              dword ptr [rsp + 5124], 4
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n23_disjunction_as
n32_lit_string_β:       mov              r11, 33;                             jmp   n23_disjunction_af
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "1:  "
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 4880], 0;           jmp   n42_lit_string_α
n33_disjunction_as:     mov              r11, 34
                        mov              eax, dword ptr [rsp + 4880]
                        cmp              eax, 0;                              jne   .Lx284_0
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_builtin_icon_α
.Lx284_0:               cmp              eax, 1;                              jne   .Lx284_1
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_builtin_icon_α
.Lx284_1:               cmp              eax, 2;                              jne   .Lx284_2
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_builtin_icon_α
.Lx284_2:                                                                     jmp   n34_call_builtin_icon_α
n33_disjunction_β:      mov              r11, 34
                        mov              eax, dword ptr [rsp + 4880]
                        cmp              eax, 0;                              je    n33_disjunction_af
                        cmp              eax, 1;                              je    n39_to_β
                                                                              jmp   n33_disjunction_af
n33_disjunction_af:     mov              r11, 34
                        add              dword ptr [rsp + 4880], 1
                        mov              eax, dword ptr [rsp + 4880]
                        cmp              eax, 1;                              je    n36_var_ref_α
                        cmp              eax, 2;                              je    n35_lit_string_α
                        add              rsp, 16;                             jmp   n43_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4832], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4840], rax
                        .section         .rodata
.Lrkfn286:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rsp + 4832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx
                        cmp              al, 104;                             je    n33_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_disjunction_β
n34_call_builtin_icon_β:
                        mov              r11, 35;                             jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 5024], 2            # result
                        mov              dword ptr [rsp + 5028], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 5032], rax;         jmp   n33_disjunction_as
n35_lit_string_β:       mov              r11, 36;                             jmp   n33_disjunction_af
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5936]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx;         jmp   n37_lit_integer_α
n36_var_ref_β:          mov              r11, 37;                             jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rsp + 4960], 3            # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n38_lit_integer_α
.Lx290_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 4976], 3            # result
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 4984], rax;         jmp   n39_to_α
.Lx291_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n39_to_α:               mov              r11, 40
                        mov              rdi, qword ptr [rsp + 4960]
                        mov              rsi, qword ptr [rsp + 4968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4960], 3
                        mov              qword ptr [rsp + 4968], rax
                        mov              rdi, qword ptr [rsp + 4976]
                        mov              rsi, qword ptr [rsp + 4984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4976], 3
                        mov              qword ptr [rsp + 4984], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4944], rax
.Lx293_0:               mov              rax, qword ptr [rsp + 4944]
                        mov              rcx, qword ptr [rsp + 4984]
                        cmp              rax, rcx;                            jg    n33_disjunction_af
                        mov              qword ptr [rsp + 4928], 3
                        mov              qword ptr [rsp + 4936], rax;         jmp   n40_subscript_α
n39_to_β:               mov              r11, 40
                        inc              qword ptr [rsp + 4944];              jmp   .Lx293_0
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              r11, 41
                        mov              rdi, qword ptr [rsp + 4912]
                        mov              rsi, qword ptr [rsp + 4920]
                        mov              rdx, qword ptr [rsp + 4928]
                        mov              rcx, qword ptr [rsp + 4936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:            mov              r11, 42
                        mov              rdi, qword ptr [rsp + 4992]
                        mov              rsi, qword ptr [rsp + 5000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n39_to_β
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx;         jmp   n33_disjunction_as
n41_deref_β:            mov              r11, 42;                             jmp   n39_to_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 4
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n33_disjunction_as
n42_lit_string_β:       mov              r11, 43;                             jmp   n33_disjunction_af
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "0:  "
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 4656], 0;           jmp   n52_lit_string_α
n43_disjunction_as:     mov              r11, 44
                        mov              eax, dword ptr [rsp + 4656]
                        cmp              eax, 0;                              jne   .Lx298_0
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_builtin_icon_α
.Lx298_0:               cmp              eax, 1;                              jne   .Lx298_1
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_builtin_icon_α
.Lx298_1:               cmp              eax, 2;                              jne   .Lx298_2
                        mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_builtin_icon_α
.Lx298_2:                                                                     jmp   n44_call_builtin_icon_α
n43_disjunction_β:      mov              r11, 44
                        mov              eax, dword ptr [rsp + 4656]
                        cmp              eax, 0;                              je    n43_disjunction_af
                        cmp              eax, 1;                              je    n49_to_β
                                                                              jmp   n43_disjunction_af
n43_disjunction_af:     mov              r11, 44
                        add              dword ptr [rsp + 4656], 1
                        mov              eax, dword ptr [rsp + 4656]
                        cmp              eax, 1;                              je    n46_var_ref_α
                        cmp              eax, 2;                              je    n45_lit_string_α
                        add              rsp, 16;                             jmp   n53_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4616], rax
                        .section         .rodata
.Lrkfn300:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rsp + 4608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4592], rax
                        mov              qword ptr [rsp + 4600], rdx
                        cmp              al, 104;                             je    n43_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_disjunction_β
n44_call_builtin_icon_β:
                        mov              r11, 45;                             jmp   n43_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 4800], 2            # result
                        mov              dword ptr [rsp + 4804], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 4808], rax;         jmp   n43_disjunction_as
n45_lit_string_β:       mov              r11, 46;                             jmp   n43_disjunction_af
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5936]
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx;         jmp   n47_lit_integer_α
n46_var_ref_β:          mov              r11, 47;                             jmp   n43_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n48_lit_integer_α
.Lx304_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 4752], 3            # result
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n49_to_α
.Lx305_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n49_to_α:               mov              r11, 50
                        mov              rdi, qword ptr [rsp + 4736]
                        mov              rsi, qword ptr [rsp + 4744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4736], 3
                        mov              qword ptr [rsp + 4744], rax
                        mov              rdi, qword ptr [rsp + 4752]
                        mov              rsi, qword ptr [rsp + 4760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4752], 3
                        mov              qword ptr [rsp + 4760], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4720], rax
.Lx307_0:               mov              rax, qword ptr [rsp + 4720]
                        mov              rcx, qword ptr [rsp + 4760]
                        cmp              rax, rcx;                            jg    n43_disjunction_af
                        mov              qword ptr [rsp + 4704], 3
                        mov              qword ptr [rsp + 4712], rax;         jmp   n50_subscript_α
n49_to_β:               mov              r11, 50
                        inc              qword ptr [rsp + 4720];              jmp   .Lx307_0
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              r11, 51
                        mov              rdi, qword ptr [rsp + 4688]
                        mov              rsi, qword ptr [rsp + 4696]
                        mov              rdx, qword ptr [rsp + 4704]
                        mov              rcx, qword ptr [rsp + 4712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n49_to_β
                        mov              qword ptr [rsp + 4768], rax
                        mov              qword ptr [rsp + 4776], rdx;         jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              r11, 52
                        mov              rdi, qword ptr [rsp + 4768]
                        mov              rsi, qword ptr [rsp + 4776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n49_to_β
                        mov              qword ptr [rsp + 4784], rax
                        mov              qword ptr [rsp + 4792], rdx;         jmp   n43_disjunction_as
n51_deref_β:            mov              r11, 52;                             jmp   n49_to_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 4672], 2            # result
                        mov              dword ptr [rsp + 4676], 4
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n43_disjunction_as
n52_lit_string_β:       mov              r11, 53;                             jmp   n43_disjunction_af
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "-5: "
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 4432], 0;           jmp   n62_lit_string_α
n53_disjunction_as:     mov              r11, 54
                        mov              eax, dword ptr [rsp + 4432]
                        cmp              eax, 0;                              jne   .Lx312_0
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_builtin_icon_α
.Lx312_0:               cmp              eax, 1;                              jne   .Lx312_1
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_builtin_icon_α
.Lx312_1:               cmp              eax, 2;                              jne   .Lx312_2
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_builtin_icon_α
.Lx312_2:                                                                     jmp   n54_call_builtin_icon_α
n53_disjunction_β:      mov              r11, 54
                        mov              eax, dword ptr [rsp + 4432]
                        cmp              eax, 0;                              je    n53_disjunction_af
                        cmp              eax, 1;                              je    n59_to_β
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     mov              r11, 54
                        add              dword ptr [rsp + 4432], 1
                        mov              eax, dword ptr [rsp + 4432]
                        cmp              eax, 1;                              je    n56_var_ref_α
                        cmp              eax, 2;                              je    n55_lit_string_α
                        add              rsp, 16;                             jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        .section         .rodata
.Lrkfn314:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
                        lea              rsi, [rsp + 4384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              al, 104;                             je    n53_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_disjunction_β
n54_call_builtin_icon_β:
                        mov              r11, 55;                             jmp   n53_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 4576], 2            # result
                        mov              dword ptr [rsp + 4580], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n53_disjunction_as
n55_lit_string_β:       mov              r11, 56;                             jmp   n53_disjunction_af
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5936]
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx;         jmp   n57_lit_integer_α
n56_var_ref_β:          mov              r11, 57;                             jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              r11, 58
                        mov              qword ptr [rsp + 4512], 3            # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n58_lit_integer_α
.Lx318_0:               .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 4528], 3            # result
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n59_to_α
.Lx319_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n59_to_α:               mov              r11, 60
                        mov              rdi, qword ptr [rsp + 4512]
                        mov              rsi, qword ptr [rsp + 4520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4512], 3
                        mov              qword ptr [rsp + 4520], rax
                        mov              rdi, qword ptr [rsp + 4528]
                        mov              rsi, qword ptr [rsp + 4536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4528], 3
                        mov              qword ptr [rsp + 4536], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4496], rax
.Lx321_0:               mov              rax, qword ptr [rsp + 4496]
                        mov              rcx, qword ptr [rsp + 4536]
                        cmp              rax, rcx;                            jg    n53_disjunction_af
                        mov              qword ptr [rsp + 4480], 3
                        mov              qword ptr [rsp + 4488], rax;         jmp   n60_subscript_α
n59_to_β:               mov              r11, 60
                        inc              qword ptr [rsp + 4496];              jmp   .Lx321_0
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:        mov              r11, 61
                        mov              rdi, qword ptr [rsp + 4464]
                        mov              rsi, qword ptr [rsp + 4472]
                        mov              rdx, qword ptr [rsp + 4480]
                        mov              rcx, qword ptr [rsp + 4488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n59_to_β
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx;         jmp   n61_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:            mov              r11, 62
                        mov              rdi, qword ptr [rsp + 4544]
                        mov              rsi, qword ptr [rsp + 4552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n59_to_β
                        mov              qword ptr [rsp + 4560], rax
                        mov              qword ptr [rsp + 4568], rdx;         jmp   n53_disjunction_as
n61_deref_β:            mov              r11, 62;                             jmp   n59_to_β
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 4448], 2            # result
                        mov              dword ptr [rsp + 4452], 4
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n53_disjunction_as
n62_lit_string_β:       mov              r11, 63;                             jmp   n53_disjunction_af
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "-7: "
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 4288], 2            # result
                        mov              dword ptr [rsp + 4292], 4
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n64_var_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "s1: "
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 65
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              r11, 66
                        mov              qword ptr [rsp + 4336], 3            # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n66_lit_integer_α
.Lx328_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      mov              r11, 67
                        mov              qword ptr [rsp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n67_subscript_α
.Lx329_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:        mov              r11, 68
                        mov              rdi, qword ptr [rsp + 4320]
                        mov              rsi, qword ptr [rsp + 4328]
                        mov              rdx, qword ptr [rsp + 4336]
                        mov              rcx, qword ptr [rsp + 4344]
                        mov              r8, qword ptr [rsp + 4352]
                        mov              r9, qword ptr [rsp + 4360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n69_lit_string_α
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n68_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4264], rax
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4248], rax
                        .section         .rodata
.Lrkfn332:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rsp + 4240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n69_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_lit_string_α
n68_call_builtin_icon_β:
                        mov              r11, 69;                             jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 70
                        mov              qword ptr [rsp + 4144], 2            # result
                        mov              dword ptr [rsp + 4148], 4
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n70_var_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "s2: "
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              mov              r11, 71
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              r11, 72
                        mov              qword ptr [rsp + 4192], 3            # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n72_lit_integer_α
.Lx336_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              r11, 73
                        mov              qword ptr [rsp + 4208], 3            # result
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n73_subscript_α
.Lx337_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 4176]
                        mov              rsi, qword ptr [rsp + 4184]
                        mov              rdx, qword ptr [rsp + 4192]
                        mov              rcx, qword ptr [rsp + 4200]
                        mov              r8, qword ptr [rsp + 4208]
                        mov              r9, qword ptr [rsp + 4216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n75_lit_string_α
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx;         jmp   n74_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4104], rax
                        .section         .rodata
.Lrkfn340:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rsp + 4096]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n75_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_lit_string_α
n74_call_builtin_icon_β:
                        mov              r11, 75;                             jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 76
                        mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 4
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n76_var_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "s3: "
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 77
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              r11, 78
                        mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n78_lit_integer_α
.Lx344_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              r11, 79
                        mov              qword ptr [rsp + 4064], 3            # result
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n79_subscript_α
.Lx345_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 4032]
                        mov              rsi, qword ptr [rsp + 4040]
                        mov              rdx, qword ptr [rsp + 4048]
                        mov              rcx, qword ptr [rsp + 4056]
                        mov              r8, qword ptr [rsp + 4064]
                        mov              r9, qword ptr [rsp + 4072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_lit_string_α
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx;         jmp   n80_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3976], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3960], rax
                        .section         .rodata
.Lrkfn348:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rsp + 3952]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        cmp              al, 104;                             je    n81_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_lit_string_α
n80_call_builtin_icon_β:
                        mov              r11, 81;                             jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 82
                        mov              qword ptr [rsp + 3856], 2            # result
                        mov              dword ptr [rsp + 3860], 4
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n82_var_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "s4: "
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              r11, 83
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rsp + 3904], 3            # result
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n84_lit_integer_α
.Lx352_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rsp + 3920], 3            # result
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n85_subscript_α
.Lx353_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n85_subscript_α:        mov              r11, 86
                        mov              rdi, qword ptr [rsp + 3888]
                        mov              rsi, qword ptr [rsp + 3896]
                        mov              rdx, qword ptr [rsp + 3904]
                        mov              rcx, qword ptr [rsp + 3912]
                        mov              r8, qword ptr [rsp + 3920]
                        mov              r9, qword ptr [rsp + 3928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_lit_string_α
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n86_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3816], rax
                        .section         .rodata
.Lrkfn356:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]
                        lea              rsi, [rsp + 3808]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    n87_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_lit_string_α
n86_call_builtin_icon_β:
                        mov              r11, 87;                             jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 3712], 2            # result
                        mov              dword ptr [rsp + 3716], 4
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n88_var_α
.Lx357_0:               .quad            .Lx357_0_s
.Lx357_0_s:             .string          "s5: "
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              r11, 89
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              r11, 90
                        mov              qword ptr [rsp + 3760], 3            # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n90_lit_integer_α
.Lx360_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              r11, 91
                        mov              qword ptr [rsp + 3776], 3            # result
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n91_subscript_α
.Lx361_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 3744]
                        mov              rsi, qword ptr [rsp + 3752]
                        mov              rdx, qword ptr [rsp + 3760]
                        mov              rcx, qword ptr [rsp + 3768]
                        mov              r8, qword ptr [rsp + 3776]
                        mov              r9, qword ptr [rsp + 3784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n93_lit_string_α
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n92_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3688], rax
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3672], rax
                        .section         .rodata
.Lrkfn364:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rsp + 3664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              al, 104;                             je    n93_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_lit_string_α
n92_call_builtin_icon_β:
                        mov              r11, 93;                             jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 94
                        mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 4
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n94_var_α
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "s6: "
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              mov              r11, 95
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              r11, 96
                        mov              qword ptr [rsp + 3616], 3            # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n96_lit_integer_α
.Lx368_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 97
                        mov              qword ptr [rsp + 3632], 3            # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n97_subscript_α
.Lx369_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n97_subscript_α:        mov              r11, 98
                        mov              rdi, qword ptr [rsp + 3600]
                        mov              rsi, qword ptr [rsp + 3608]
                        mov              rdx, qword ptr [rsp + 3616]
                        mov              rcx, qword ptr [rsp + 3624]
                        mov              r8, qword ptr [rsp + 3632]
                        mov              r9, qword ptr [rsp + 3640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n99_lit_string_α
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n98_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3544], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3528], rax
                        .section         .rodata
.Lrkfn372:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn372]
                        lea              rsi, [rsp + 3520]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx
                        cmp              al, 104;                             je    n99_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_lit_string_α
n98_call_builtin_icon_β:
                        mov              r11, 99;                             jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 100
                        mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 4
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n100_var_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "s7: "
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n102_lit_integer_α
.Lx376_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 3488], 3            # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n103_subscript_α
.Lx377_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n103_subscript_α:       mov              r11, 104
                        mov              rdi, qword ptr [rsp + 3456]
                        mov              rsi, qword ptr [rsp + 3464]
                        mov              rdx, qword ptr [rsp + 3472]
                        mov              rcx, qword ptr [rsp + 3480]
                        mov              r8, qword ptr [rsp + 3488]
                        mov              r9, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn380:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rsp + 3376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_lit_string_α
n104_call_builtin_icon_β:
                        mov              r11, 105;                            jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 4
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n106_var_α
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "s8: "
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 3328], 3            # result
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n108_lit_integer_α
.Lx384_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 3344], 3            # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n109_subscript_α
.Lx385_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n109_subscript_α:       mov              r11, 110
                        mov              rdi, qword ptr [rsp + 3312]
                        mov              rsi, qword ptr [rsp + 3320]
                        mov              rdx, qword ptr [rsp + 3328]
                        mov              rcx, qword ptr [rsp + 3336]
                        mov              r8, qword ptr [rsp + 3344]
                        mov              r9, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n111_lit_string_α
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n110_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_icon_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn388:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn388]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n111_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_lit_string_α
n110_call_builtin_icon_β:
                        mov              r11, 111;                            jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 3136], 2            # result
                        mov              dword ptr [rsp + 3140], 4
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n112_var_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "s9: "
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n113_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n114_lit_integer_α
.Lx392_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rsp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n115_subscript_α
.Lx393_0:               .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n115_subscript_α:       mov              r11, 116
                        mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              rdx, qword ptr [rsp + 3184]
                        mov              rcx, qword ptr [rsp + 3192]
                        mov              r8, qword ptr [rsp + 3200]
                        mov              r9, qword ptr [rsp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n117_lit_string_α
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn396:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n117_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_lit_string_α
n116_call_builtin_icon_β:
                        mov              r11, 117;                            jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 4
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n118_lit_string_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "k1: "
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 5
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n119_lit_integer_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rsp + 3040], 3            # result
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n120_lit_integer_α
.Lx399_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 3056], 3            # result
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n121_subscript_α
.Lx400_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n121_subscript_α:       mov              r11, 122
                        mov              rdi, qword ptr [rsp + 3024]
                        mov              rsi, qword ptr [rsp + 3032]
                        mov              rdx, qword ptr [rsp + 3040]
                        mov              rcx, qword ptr [rsp + 3048]
                        mov              r8, qword ptr [rsp + 3056]
                        mov              r9, qword ptr [rsp + 3064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n123_lit_string_α
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn403:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 4
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n124_lit_string_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "k2: "
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 5
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n125_lit_integer_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n126_lit_integer_α
.Lx406_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rsp + 2912], 3            # result
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n127_subscript_α
.Lx407_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n127_subscript_α:       mov              r11, 128
                        mov              rdi, qword ptr [rsp + 2880]
                        mov              rsi, qword ptr [rsp + 2888]
                        mov              rdx, qword ptr [rsp + 2896]
                        mov              rcx, qword ptr [rsp + 2904]
                        mov              r8, qword ptr [rsp + 2912]
                        mov              r9, qword ptr [rsp + 2920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n129_lit_string_α
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn410:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n129_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_lit_string_α
n128_call_builtin_icon_β:
                        mov              r11, 129;                            jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 4
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n130_lit_string_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "k3: "
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 5
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n131_lit_integer_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n132_lit_integer_α
.Lx413_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n133_subscript_α
.Lx414_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n133_subscript_α:       mov              r11, 134
                        mov              rdi, qword ptr [rsp + 2736]
                        mov              rsi, qword ptr [rsp + 2744]
                        mov              rdx, qword ptr [rsp + 2752]
                        mov              rcx, qword ptr [rsp + 2760]
                        mov              r8, qword ptr [rsp + 2768]
                        mov              r9, qword ptr [rsp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n135_lit_string_α
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n134_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_icon_α:
                        mov              r11, 135
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2664], rax
                        .section         .rodata
.Lrkfn417:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rsp + 2656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    n135_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_lit_string_α
n134_call_builtin_icon_β:
                        mov              r11, 135;                            jmp   n135_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 4
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n136_lit_string_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "k4: "
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], 5
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n137_lit_integer_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n138_lit_integer_α
.Lx420_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rsp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n139_subscript_α
.Lx421_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n139_subscript_α:       mov              r11, 140
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        mov              rdx, qword ptr [rsp + 2608]
                        mov              rcx, qword ptr [rsp + 2616]
                        mov              r8, qword ptr [rsp + 2624]
                        mov              r9, qword ptr [rsp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n141_lit_string_α
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n140_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax
                        .section         .rodata
.Lrkfn424:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n141_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_lit_string_α
n140_call_builtin_icon_β:
                        mov              r11, 141;                            jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n142_lit_string_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "k5: "
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 5
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n143_lit_integer_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     mov              r11, 144
                        mov              qword ptr [rsp + 2464], 3            # result
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n144_lit_integer_α
.Lx427_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              r11, 145
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n145_subscript_α
.Lx428_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n145_subscript_α:       mov              r11, 146
                        mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              rdx, qword ptr [rsp + 2464]
                        mov              rcx, qword ptr [rsp + 2472]
                        mov              r8, qword ptr [rsp + 2480]
                        mov              r9, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n147_lit_string_α
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        .section         .rodata
.Lrkfn431:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 2368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n147_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_lit_string_α
n146_call_builtin_icon_β:
                        mov              r11, 147;                            jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 4
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n148_lit_string_α
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "k6: "
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 5
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n149_lit_integer_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n150_lit_integer_α
.Lx434_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n151_subscript_α
.Lx435_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n151_subscript_α:       mov              r11, 152
                        mov              rdi, qword ptr [rsp + 2304]
                        mov              rsi, qword ptr [rsp + 2312]
                        mov              rdx, qword ptr [rsp + 2320]
                        mov              rcx, qword ptr [rsp + 2328]
                        mov              r8, qword ptr [rsp + 2336]
                        mov              r9, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n153_lit_string_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn438:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n153_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_lit_string_α
n152_call_builtin_icon_β:
                        mov              r11, 153;                            jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 4
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n154_lit_string_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "k7: "
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 5
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n155_lit_integer_α
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n156_lit_integer_α
.Lx441_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n157_subscript_α
.Lx442_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n157_subscript_α:       mov              r11, 158
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8, qword ptr [rsp + 2192]
                        mov              r9, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n159_lit_string_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              r11, 159
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn445:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n159_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_lit_string_α
n158_call_builtin_icon_β:
                        mov              r11, 159;                            jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 4
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n160_lit_string_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "k8: "
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 5
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n161_lit_integer_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 2032], 3            # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n162_lit_integer_α
.Lx448_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n163_subscript_α
.Lx449_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n163_subscript_α:       mov              r11, 164
                        mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              r8, qword ptr [rsp + 2048]
                        mov              r9, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n165_lit_string_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n164_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              r11, 165
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        .section         .rodata
.Lrkfn452:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n165_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_lit_string_α
n164_call_builtin_icon_β:
                        mov              r11, 165;                            jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 4
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n166_lit_string_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "k9: "
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 5
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n167_lit_integer_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n168_lit_integer_α
.Lx455_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rsp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n169_subscript_α
.Lx456_0:               .quad            18446744073709551612
#-----------------------------------------------------------------------------------------------------------------------
n169_subscript_α:       mov              r11, 170
                        mov              rdi, qword ptr [rsp + 1872]
                        mov              rsi, qword ptr [rsp + 1880]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        mov              r8, qword ptr [rsp + 1904]
                        mov              r9, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n171_lit_string_α
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n170_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1800], rax
                        .section         .rodata
.Lrkfn459:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn459]
                        lea              rsi, [rsp + 1792]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n171_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_lit_string_α
n170_call_builtin_icon_β:
                        mov              r11, 171;                            jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 5
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n172_assign_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx;         jmp   n173_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 4
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n174_var_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "t:  "
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n175_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn466:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n177_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_call_builtin_icon_α
n175_call_builtin_icon_β:
                        mov              r11, 176;                            jmp   n177_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_icon_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn468:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn468]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n177_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_disjunction_α
n176_call_builtin_icon_β:
                        mov              r11, 177;                            jmp   n177_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n177_disjunction_α:     sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1472], 0;           jmp   n229_var_α
n177_disjunction_as:    mov              r11, 178
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 0;                              jne   .Lx470_0
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_var_α
.Lx470_0:               cmp              eax, 1;                              jne   .Lx470_1
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_var_α
.Lx470_1:                                                                     jmp   n178_var_α
n177_disjunction_β:     mov              r11, 178
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 0;                              je    n177_disjunction_af
                                                                              jmp   n177_disjunction_af
n177_disjunction_af:    mov              r11, 178
                        add              dword ptr [rsp + 1472], 1
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 1;                              je    n227_lit_string_α
                        add              rsp, 16;                             jmp   n178_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n179_var_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n180_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_test_α:      mov              r11, 181
                        mov              rdi, qword ptr [rsp + 5936]
                        mov              rsi, qword ptr [rsp + 5944]
                        mov              rdx, qword ptr [rsp + 5952]
                        mov              rcx, qword ptr [rsp + 5960]
                        mov              r8d, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n184_lit_string_α
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 8
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n182_call_builtin_icon_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "are ~==="
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_icon_α:
                        mov              r11, 183
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn478:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_conjunction_α
n182_call_builtin_icon_β:
                        mov              r11, 183;                            jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_conjunction_α:     mov              r11, 184
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n184_lit_string_α
n183_conjunction_β:     mov              r11, 184;                            jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 5
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n185_lit_string_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "?x:  "
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n186_random_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n186_random_α:          mov              r11, 187
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n189_lit_string_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n187_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n187_deref_α:           mov              r11, 188
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n189_lit_string_α
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n188_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn485:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn485]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n189_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_lit_string_α
n188_call_builtin_icon_β:
                        mov              r11, 189;                            jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n190_lit_string_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "?y:  "
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 11
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n191_random_α
.Lx487_0:               .quad            .Lx487_0_s
.Lx487_0_s:             .string          "yyyyyyyyyyy"
#-----------------------------------------------------------------------------------------------------------------------
n191_random_α:          mov              r11, 192
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n194_lit_string_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n192_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_deref_α:           mov              r11, 193
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n194_lit_string_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n193_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_icon_α:
                        mov              r11, 194
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn491:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn491]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n194_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n194_lit_string_α
n193_call_builtin_icon_β:
                        mov              r11, 194;                            jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 5
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n195_disjunction_α
.Lx492_0:               .quad            .Lx492_0_s
.Lx492_0_s:             .string          "?z:  "
#-----------------------------------------------------------------------------------------------------------------------
n195_disjunction_α:     sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n224_lit_string_α
n195_disjunction_as:    mov              r11, 196
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx494_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_call_builtin_icon_α
.Lx494_0:               cmp              eax, 1;                              jne   .Lx494_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_call_builtin_icon_α
.Lx494_1:                                                                     jmp   n196_call_builtin_icon_α
n195_disjunction_β:     mov              r11, 196
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              je    n195_disjunction_af
                                                                              jmp   n195_disjunction_af
n195_disjunction_af:    mov              r11, 196
                        add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 1;                              je    n223_lit_string_α
                        add              rsp, 16;                             jmp   n197_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_icon_α:
                        mov              r11, 197
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn496:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn496]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n195_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_lit_string_α
n196_call_builtin_icon_β:
                        mov              r11, 197;                            jmp   n195_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 4
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n198_lit_string_α
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "c1: "
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 0
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n199_call_builtin_icon_α
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              r11, 200
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn500:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_call_builtin_icon_α
n199_call_builtin_icon_β:
                        mov              r11, 200;                            jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn502:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rsp + 768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_lit_string_α
n200_call_builtin_icon_β:
                        mov              r11, 201;                            jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 4
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n202_lit_string_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "c2: "
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n203_call_builtin_icon_α
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_icon_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn506:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n205_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_call_builtin_icon_α
n203_call_builtin_icon_β:
                        mov              r11, 204;                            jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_icon_α:
                        mov              r11, 205
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn508:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n205_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_lit_string_α
n204_call_builtin_icon_β:
                        mov              r11, 205;                            jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 4
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n206_lit_string_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "c3: "
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n207_call_builtin_icon_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              r11, 208
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn512:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n209_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_call_builtin_icon_α
n207_call_builtin_icon_β:
                        mov              r11, 208;                            jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn514:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n209_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_lit_string_α
n208_call_builtin_icon_β:
                        mov              r11, 209;                            jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 4
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n210_lit_string_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "c4: "
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 4
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n211_call_builtin_icon_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "cdef"
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_icon_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn518:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n213_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_call_builtin_icon_α
n211_call_builtin_icon_β:
                        mov              r11, 212;                            jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_icon_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn520:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn520]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n213_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_lit_string_α
n212_call_builtin_icon_β:
                        mov              r11, 213;                            jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 4
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n214_lit_string_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "c5: "
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 7
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n215_call_builtin_icon_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "3.14159"
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_icon_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn524:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn524]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n217_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_call_builtin_icon_α
n215_call_builtin_icon_β:
                        mov              r11, 216;                            jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              r11, 217
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn526:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n217_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_lit_string_α
n216_call_builtin_icon_β:
                        mov              r11, 217;                            jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 4
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n218_lit_charset_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "c6: "
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_charset_α:     mov              r11, 219
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], -1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n219_lit_charset_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_charset_α:     mov              r11, 220
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], -1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n220_binop_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "def"
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           mov              r11, 221
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_icon_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn532:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn532]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_call_builtin_icon_α
n221_call_builtin_icon_β:
                        mov              r11, 222;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_icon_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn534:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn534]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n222_call_builtin_icon_β:
                        mov              r11, 223;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n195_disjunction_as
n223_lit_string_β:      mov              r11, 224;                            jmp   n195_disjunction_af
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "nope"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 0
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n225_random_α
n224_lit_string_β:      mov              r11, 225;                            jmp   n195_disjunction_af
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n225_random_α:          mov              r11, 226
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n195_disjunction_af
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n226_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_deref_α:           mov              r11, 227
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n195_disjunction_af
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n195_disjunction_as
n226_deref_β:           mov              r11, 227;                            jmp   n195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 7
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n228_call_builtin_icon_α
n227_lit_string_β:      mov              r11, 228;                            jmp   n177_disjunction_af
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "not ==="
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_icon_α:
                        mov              r11, 229
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        .section         .rodata
.Lrkfn541:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn541]
                        lea              rsi, [rsp + 1552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n177_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_disjunction_as
n228_call_builtin_icon_β:
                        mov              r11, 229;                            jmp   n177_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n230_var_α
n229_var_β:             mov              r11, 230;                            jmp   n177_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n231_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_test_α:      mov              r11, 232
                        mov              rdi, qword ptr [rsp + 5936]
                        mov              rsi, qword ptr [rsp + 5944]
                        mov              rdx, qword ptr [rsp + 5952]
                        mov              rcx, qword ptr [rsp + 5960]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n177_disjunction_af
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n177_disjunction_as
n231_binop_test_β:      mov              r11, 232;                            jmp   n177_disjunction_af
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
