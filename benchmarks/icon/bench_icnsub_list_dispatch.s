                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_I/corpus/benchmarks/icon/bench_icnsub_list_dispatch.icn"
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
                        sub              rsp, 784
                        mov              qword ptr [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 640
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
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_30_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n1_lit_integer_α
.Llit_integer_α_30_0:   .quad            11
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_31_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n2_lit_integer_α
.Llit_integer_α_31_0:   .quad            22
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_32_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n3_lit_integer_α
.Llit_integer_α_32_0:   .quad            33
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n4_lit_integer_α
.Llit_integer_α_33_0:   .quad            44
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_34_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n5_lit_integer_α
.Llit_integer_α_34_0:   .quad            55
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_35_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n6_lit_integer_α
.Llit_integer_α_35_0:   .quad            66
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n7_lit_integer_α
.Llit_integer_α_36_0:   .quad            77
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_37_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n8_make_list_α
.Llit_integer_α_37_0:   .quad            88
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_make_list_bx, @function
n8_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_make_list_α:         mov              r11, 9
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
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n9_assign_α
                        .size            n8_make_list_bx, .-n8_make_list_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n10_lit_integer_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n11_lit_integer_α
.Llit_integer_α_41_0:   .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_42_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n12_to_α
.Llit_integer_α_42_0:   .quad            2000000
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_to_bx, @function
n12_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:               mov              r11, 13
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 112], rax
.Lto_α_44_0:            mov              rax, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx;                            jg    n27_var_ref_α
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax;          jmp   n13_assign_α
n12_to_β:               mov              r11, 13
                        inc              qword ptr [rbp + 112];               jmp   .Lto_α_44_0
                        .size            n12_to_bx, .-n12_to_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n14_bound_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_bound_bx, @function
n14_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_bound_α:            mov              r11, 15
                        mov              qword ptr [rbp + 160], rsp;          jmp   n15_var_ref_α
                        .size            n14_bound_bx, .-n14_bound_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n16_var_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 296], rax;          jmp   n17_lit_integer_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_52_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n18_coerce_numeric_α
.Llit_integer_α_52_0:   .quad            8
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_coerce_numeric_bx, @function
n18_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              r11, 19
                        mov              eax, dword ptr [rbp + 656]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_54_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_54_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_54_0
.Lcoerce_numeric_α_54_1:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 280], rax;          jmp   n19_binop_α
.Lcoerce_numeric_α_54_0:
                        lea              rdi, [rbp + 656]
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 104;                             je    n26_unmark_α
                                                                              jmp   n19_binop_α
                        .size            n18_coerce_numeric_bx, .-n18_coerce_numeric_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n20_lit_integer_α
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_56_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n21_coerce_numeric_α
.Llit_integer_α_56_0:   .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_coerce_numeric_bx, @function
n21_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              r11, 22
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_58_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_58_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_58_0
.Lcoerce_numeric_α_58_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax;          jmp   n22_binop_α
.Lcoerce_numeric_α_58_0:
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n26_unmark_α
                                                                              jmp   n22_binop_α
                        .size            n21_coerce_numeric_bx, .-n21_coerce_numeric_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 23
                        mov              eax, dword ptr [rbp + 240]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_59_2
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_59_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_59_7
.Lbinop_α_59_2:         and              edx, 1;                              jz    .Lbinop_α_59_0
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_59_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_59_4
.Lbinop_α_59_3:         movq             xmm0, rsi
.Lbinop_α_59_4:         cmp              cl, 5;                               je    .Lbinop_α_59_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_59_6
.Lbinop_α_59_5:         movq             xmm1, rdi
.Lbinop_α_59_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_59_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_59_7:                                                               jmp   n23_subscript_α
.Lbinop_α_59_0:         mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n23_subscript_α
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_subscript_bx, @function
n23_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        mov              r11, 24
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n24_deref_α
                        .size            n23_subscript_bx, .-n23_subscript_bx
                        .type            n24_deref_bx, @function
n24_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:            mov              r11, 25
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n25_assign_α
                        .size            n24_deref_bx, .-n24_deref_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n26_unmark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_unmark_bx, @function
n26_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:           mov              r11, 27
                        mov              rsp, qword ptr [rbp + 160];          jmp   n12_to_β
                        .size            n26_unmark_bx, .-n26_unmark_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n28_deref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_deref_bx, @function
n28_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_deref_α:            mov              r11, 29
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n29_call_icon_α
                        .size            n28_deref_bx, .-n28_deref_bx
                        .type            n29_call_icon_bx, @function
n29_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_icon_α:        mov              r11, 30
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn69:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn69]
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
n29_call_icon_β:        mov              r11, 30;                             jmp   main_ω
                        .size            n29_call_icon_bx, .-n29_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_68_248
                        .section         .rodata
.Licn_trace_nm70:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm70]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_68_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_68_249
                        .section         .rodata
.Licn_trace_nm71:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm71]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_68_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
