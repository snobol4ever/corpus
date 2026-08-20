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
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              rdi, rsp
                        add              rdi, 560
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1_call_builtin_icon_α
.Lx32_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn34:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n3_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_assign_α
n1_call_builtin_icon_β:                                                       jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n5_subscript_α
.Lx38_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:         mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n8_var_ref_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n7_assign_var_α
.Lx40_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n8_var_ref_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n10_subscript_α
.Lx44_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              rdi, qword ptr [rsp + 336]
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
                        cmp              eax, 104;                            je    n13_var_ref_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n12_assign_var_α
.Lx46_0:                .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n13_var_ref_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n15_subscript_α
.Lx50_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n18_lit_integer_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n17_assign_var_α
.Lx52_0:                .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:       mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n18_lit_integer_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n19_assign_α
.Lx54_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 136], rax;          jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 200], rax;          jmp   n23_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n23_iterate_α:          mov              qword ptr [rsp + 176], 0
.Lx63_0:                mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              rax, 104;                            je    n30_var_α
                                                                              jmp   n24_subscript_α
n23_iterate_β:          inc              qword ptr [rsp + 176];               jmp   .Lx63_0
#-----------------------------------------------------------------------------------------------------------------------
n24_subscript_α:        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n23_iterate_β
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n25_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_deref_α:            mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n23_iterate_β
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 5;                              je    .Lx67_1
                        cmp              eax, 3;                              jne   .Lx67_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx67_0
.Lx67_1:                mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 120], rax;          jmp   n27_coerce_numeric_α
.Lx67_0:                lea              rdi, [rsp + 560]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 112]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5;                              je    .Lx69_1
                        cmp              eax, 3;                              jne   .Lx69_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 3;                              jne   .Lx69_0
.Lx69_1:                mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 104], rax;          jmp   n28_binop_α
.Lx69_0:                lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              eax, dword ptr [rsp + 112]
                        mov              ecx, dword ptr [rsp + 96]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx70_2
                        mov              rax, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 104]
                        add              rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx70_7
.Lx70_2:                and              edx, 1;                              jz    .Lx70_0
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdi, qword ptr [rsp + 104]
                        cmp              eax, 5;                              je    .Lx70_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx70_4
.Lx70_3:                movq             xmm0, rsi
.Lx70_4:                cmp              ecx, 5;                              je    .Lx70_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx70_6
.Lx70_5:                movq             xmm1, rdi
.Lx70_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx70_7:                                                                      jmp   n29_assign_α
.Lx70_0:                mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n30_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n23_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 56], rax;           jmp   n31_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn75:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
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
n31_call_builtin_icon_β:
                                                                              jmp   main_ω
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
