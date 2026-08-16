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
                        xor              r14d, r14d
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1_lit_integer_α
.Lx29_0:                .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n2_lit_integer_α
.Lx30_0:                .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n3_lit_integer_α
.Lx31_0:                .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n4_lit_integer_α
.Lx32_0:                .quad            44
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n5_lit_integer_α
.Lx33_0:                .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n6_lit_integer_α
.Lx34_0:                .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n7_lit_integer_α
.Lx35_0:                .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n8_make_list_α
.Lx36_0:                .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n8_make_list_α:         mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n11_lit_integer_α
.Lx40_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n12_to_α
.Lx41_0:                .quad            2000000
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lx43_0:                mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jg    n27_var_α
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n13_assign_α
n12_to_β:               inc              qword ptr [rsp + 96];                jmp   .Lx43_0
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n14_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n14_bound_α:            mov              qword ptr [rsp + 144], rsp;          jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 656]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 280], rax;          jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n18_coerce_numeric_α
.Lx51_0:                .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 5;                              je    .Lx53_1
                        cmp              eax, 3;                              jne   .Lx53_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx53_0
.Lx53_1:                mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 264], rax;          jmp   n19_binop_α
.Lx53_0:                lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        cmp              eax, 104;                            je    n26_unmark_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n21_coerce_numeric_α
.Lx55_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 5;                              je    .Lx57_1
                        cmp              eax, 3;                              jne   .Lx57_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 3;                              jne   .Lx57_0
.Lx57_1:                mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n22_binop_α
.Lx57_0:                lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              eax, dword ptr [rsp + 224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx58_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   .Lx58_7
.Lx58_2:                and              edx, 1;                              jz    .Lx58_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx58_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx58_4
.Lx58_3:                movq             xmm0, rsi
.Lx58_4:                cmp              ecx, 5;                              je    .Lx58_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx58_6
.Lx58_5:                movq             xmm1, rdi
.Lx58_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 208], 5
                        mov              qword ptr [rsp + 216], rax
.Lx58_7:                                                                      jmp   n23_subscript_α
.Lx58_0:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n26_unmark_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n26_unmark_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n24_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:            mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n26_unmark_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n26_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:           mov              rsp, qword ptr [rsp + 144];          jmp   n12_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 56], rax;           jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn67:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
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
n28_call_builtin_icon_β:
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
