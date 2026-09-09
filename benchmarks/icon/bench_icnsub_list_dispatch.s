                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/bench_icnsub_list_dispatch.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 624
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_29_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n1_lit_integer_α
.Llit_integer_α_29_0:   .quad            11
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_30_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n2_lit_integer_α
.Llit_integer_α_30_0:   .quad            22
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_31_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n3_lit_integer_α
.Llit_integer_α_31_0:   .quad            33
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_32_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n4_lit_integer_α
.Llit_integer_α_32_0:   .quad            44
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n5_lit_integer_α
.Llit_integer_α_33_0:   .quad            55
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_34_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n6_lit_integer_α
.Llit_integer_α_34_0:   .quad            66
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_35_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n7_lit_integer_α
.Llit_integer_α_35_0:   .quad            77
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n8_make_list_α
.Llit_integer_α_36_0:   .quad            88
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_make_list_bx, @function
n8_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_make_list_α:         mov              r11, 9
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n9_assign_α
                        .size            n8_make_list_bx, .-n8_make_list_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n10_lit_integer_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_40_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n11_lit_integer_α
.Llit_integer_α_40_0:   .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n12_to_α
.Llit_integer_α_41_0:   .quad            2000000
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_to_bx, @function
n12_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:               mov              r11, 13
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lto_α_43_0:            mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx;                            jg    n27_var_α
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax;           jmp   n13_assign_α
n12_to_β:               mov              r11, 13
                        inc              qword ptr [rbp + 96];                jmp   .Lto_α_43_0
                        .size            n12_to_bx, .-n12_to_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n14_bound_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_bound_bx, @function
n14_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_bound_α:            mov              r11, 15
                        mov              qword ptr [rbp + 144], rsp;          jmp   n15_var_ref_α
                        .size            n14_bound_bx, .-n14_bound_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n16_var_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 280], rax;          jmp   n17_lit_integer_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_51_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n18_coerce_numeric_α
.Llit_integer_α_51_0:   .quad            8
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_coerce_numeric_bx, @function
n18_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              r11, 19
                        mov              eax, dword ptr [rbp + 640]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_53_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_53_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_53_0
.Lcoerce_numeric_α_53_1:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 264], rax;          jmp   n19_binop_α
.Lcoerce_numeric_α_53_0:
                        lea              rdi, [rbp + 640]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n26_unmark_α
                                                                              jmp   n19_binop_α
                        .size            n18_coerce_numeric_bx, .-n18_coerce_numeric_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n20_lit_integer_α
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_55_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n21_coerce_numeric_α
.Llit_integer_α_55_0:   .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_coerce_numeric_bx, @function
n21_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              r11, 22
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_57_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_57_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_57_0
.Lcoerce_numeric_α_57_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax;          jmp   n22_binop_α
.Lcoerce_numeric_α_57_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 104;                             je    n26_unmark_α
                                                                              jmp   n22_binop_α
                        .size            n21_coerce_numeric_bx, .-n21_coerce_numeric_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 23
                        mov              eax, dword ptr [rbp + 224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_58_2
                        mov              rax, qword ptr [rbp + 232]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_58_0
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax;          jmp   .Lbinop_α_58_7
.Lbinop_α_58_2:         and              edx, 1;                              jz    .Lbinop_α_58_0
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_58_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_58_4
.Lbinop_α_58_3:         movq             xmm0, rsi
.Lbinop_α_58_4:         cmp              cl, 5;                               je    .Lbinop_α_58_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_58_6
.Lbinop_α_58_5:         movq             xmm1, rdi
.Lbinop_α_58_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rbp + 208], 5
                        mov              qword ptr [rbp + 216], rax
.Lbinop_α_58_7:                                                               jmp   n23_subscript_α
.Lbinop_α_58_0:         mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n23_subscript_α
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_subscript_bx, @function
n23_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        mov              r11, 24
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n24_deref_α
                        .size            n23_subscript_bx, .-n23_subscript_bx
                        .type            n24_deref_bx, @function
n24_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:            mov              r11, 25
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n25_assign_α
                        .size            n24_deref_bx, .-n24_deref_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n26_unmark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_unmark_bx, @function
n26_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:           mov              r11, 27
                        mov              rsp, qword ptr [rbp + 144];          jmp   n12_to_β
                        .size            n26_unmark_bx, .-n26_unmark_bx
                        .type            n27_var_bx, @function
n27_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 56], rax;           jmp   n28_call_icon_α
                        .size            n27_var_bx, .-n27_var_bx
                        .type            n28_call_icon_bx, @function
n28_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_icon_α:        mov              r11, 29
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn67:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn67]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n28_call_icon_β:        mov              r11, 29;                             jmp   main_ω
                        .size            n28_call_icon_bx, .-n28_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_66_248
                        .section         .rodata
.Licn_trace_nm68:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm68]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_66_248:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_66_249
                        .section         .rodata
.Licn_trace_nm69:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm69]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_66_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
